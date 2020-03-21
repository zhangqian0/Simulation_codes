%TMR传感器要尤其注意一下坐标，是按照扰动图像在场域内倒入的结果来确定
clear all
close all
clc

s1=importdata('D:\bin\Sensi_tmr_12x12_7.mat');
s1=abs(s1);
s1(isnan(s1))=0;
zb=importdata('D:\bin\zb4x4_2.mat'); %坐标阵 node_list  

for mk=1:12
e0=s1(mk,:); %选前11行观察

for i=1:12
e(zb(i,1),zb(i,2))=e0(i); %将一行的灵敏度放入坐标
end

x=-15.75*2:16:15.75*2;
y=-15.75*2:16:15.75*2;

% for i=1:4         %去掉多余格子 
%     for j=1:4
%        if (i-2)^2+(j-2)^2>2^2 
%             e(i,j)=NaN;
%         end
%     end
% end

%%绘图
figure(mk)
imag=pcolor(x,y,e);
a=[1,1,1];
%view(140,50);
xlabel('x');ylabel('y');zlabel('z')
%surf(x,y,z,e)
%colorbar([0.93 0.12 0.02 0.8]);
%xlabel('x (mm)','FontSize',12,'Rotation',0) 
%,'FontName ','Times New Roman '
%ylabel('y (mm)','FontSize',12,'Rotation',90)
grid off % 去掉坐标网格   
shading interp
%title('LBP');
%view(45,45)
%title('Sensitivity')
axis off

%set(gcf, 'PaperPosition', [-13.8 0 15 15]);
%set(gcf, 'PaperSize', [1.3 15]); %Keep the same paper size，设置pdf纸张的大小，
nam=num2str(mk);
subname=['C:\Users\Administrator\Desktop\' nam ' _.png'];
%saveas(gcf, subname);
end