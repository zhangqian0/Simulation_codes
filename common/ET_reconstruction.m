clear all; close all; clc;
st=importdata('D:\bin\lmdz_ECTDM1.mat');  %灵敏度矩阵
st(isnan(st)) = 0;
st=st';

c=importdata('D:\bin\ECT_cabs_rods1.mat'); %未归一化的测量值
cl=importdata('D:\bin\ECT_empty_1110.mat');
ch=importdata('D:\bin\ECT_full_1110.mat');
c=(c-cl)./(ch-cl);
stem(c);
% c(c>1)=1;
% c(c<0)=0;

zb=importdata('D:\bin\zuobiaoect2d3.mat'); % node_list矩阵
[hx hy]=size(zb);
%% LBP
g1=st*c;
%% SIRT 
s=st';
sj1=s*st;
sj=diag(sj1);
sj2=diag(sj);
a0=0.001*st*sj2^-1; %系数可调
a=a0;           %a为S伪逆
for i=1:200    %次数可调
   a=a+a0*(eye(66)-s*a);   
end
g2=a*c;
 
%% Landweber 
[xl,laimd]=eig(s*s'); 
 eigenvalue=diag(laimd);
 lamdd=eigenvalue(66);
 minia=0.001/lamdd; %可调
 
 g3=g1;
  for i=1:500
    g3=g3-minia*st*(s*g3-c);
  end

%% 像素值归一化 
g11=g2; %选一个
g1max=max(max(g11));g1min0=min(min(g11));               %%%换g为标准值
g1min1=(g1max-g1min0)*1/5+g1min0;  %阈值滤伪影
for i=1:hx              
         if g11(i,1)<g1min1
             g11(i,1)=g1min1;
         end  
         if g11(i,1)>g1max
             g11(i,1)=g1max;
         end
end

for i=1:hx
img(zb(i,1),zb(i,2))=g11(i); %图像向量按node_list排列
end

%消去四个角
for i=1:64 
    for j=1:64
         if (i-32)^2+(j-32)^2>31^2
             img(i,j)=NaN;
         end
    end
end

%% 绘图和保存
figure(1)
pcolor(img)
set(gcf,'position',[200 200 520 500]);
colorbar([0.92 0.12 0.02 0.8]);
%xlabel('x (mm)','FontSize',12,'Rotation',0)  '
%ylabel('y (mm)','FontSize',12,'Rotation',90)
grid off % 去掉坐标网格   
shading interp
set(gcf, 'PaperPosition', [-2.05 -1.75 15 15]);
set(gcf, 'PaperSize', [11.4 12]); %Keep the same paper size，设置pdf纸张的大小，
%saveas(gcf, 'C:\Users\Administrator\Desktop\ect_st1_r.pdf');