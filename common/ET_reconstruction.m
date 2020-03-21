clear all; close all; clc;
st=importdata('D:\bin\lmdz_ECTDM1.mat');  %�����Ⱦ���
st(isnan(st)) = 0;
st=st';

c=importdata('D:\bin\ECT_cabs_rods1.mat'); %δ��һ���Ĳ���ֵ
cl=importdata('D:\bin\ECT_empty_1110.mat');
ch=importdata('D:\bin\ECT_full_1110.mat');
c=(c-cl)./(ch-cl);
stem(c);
% c(c>1)=1;
% c(c<0)=0;

zb=importdata('D:\bin\zuobiaoect2d3.mat'); % node_list����
[hx hy]=size(zb);
%% LBP
g1=st*c;
%% SIRT 
s=st';
sj1=s*st;
sj=diag(sj1);
sj2=diag(sj);
a0=0.001*st*sj2^-1; %ϵ���ɵ�
a=a0;           %aΪSα��
for i=1:200    %�����ɵ�
   a=a+a0*(eye(66)-s*a);   
end
g2=a*c;
 
%% Landweber 
[xl,laimd]=eig(s*s'); 
 eigenvalue=diag(laimd);
 lamdd=eigenvalue(66);
 minia=0.001/lamdd; %�ɵ�
 
 g3=g1;
  for i=1:500
    g3=g3-minia*st*(s*g3-c);
  end

%% ����ֵ��һ�� 
g11=g2; %ѡһ��
g1max=max(max(g11));g1min0=min(min(g11));               %%%��gΪ��׼ֵ
g1min1=(g1max-g1min0)*1/5+g1min0;  %��ֵ��αӰ
for i=1:hx              
         if g11(i,1)<g1min1
             g11(i,1)=g1min1;
         end  
         if g11(i,1)>g1max
             g11(i,1)=g1max;
         end
end

for i=1:hx
img(zb(i,1),zb(i,2))=g11(i); %ͼ��������node_list����
end

%��ȥ�ĸ���
for i=1:64 
    for j=1:64
         if (i-32)^2+(j-32)^2>31^2
             img(i,j)=NaN;
         end
    end
end

%% ��ͼ�ͱ���
figure(1)
pcolor(img)
set(gcf,'position',[200 200 520 500]);
colorbar([0.92 0.12 0.02 0.8]);
%xlabel('x (mm)','FontSize',12,'Rotation',0)  '
%ylabel('y (mm)','FontSize',12,'Rotation',90)
grid off % ȥ����������   
shading interp
set(gcf, 'PaperPosition', [-2.05 -1.75 15 15]);
set(gcf, 'PaperSize', [11.4 12]); %Keep the same paper size������pdfֽ�ŵĴ�С��
%saveas(gcf, 'C:\Users\Administrator\Desktop\ect_st1_r.pdf');