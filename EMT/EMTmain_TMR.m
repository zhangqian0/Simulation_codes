clear; clc; close all;
tic
%% Sensor parameter
    nE = 12; %极板数       
    nT=12; %TMR数
    res=4; %像素为32*32
    r=47; %管道内半径
    ang=pi*(270:-30:-60)/180; %TMR传感器所在位置的角度，生成所在网格位置
    coor_x=(r+3)*cos(ang);    
    coor_y=(r+3)*sin(ang);
    tmr_nodes=[coor_x',coor_y']; 
%% Nodes generation    
%这一节是生成 node_list用，这个变量每行为一个像素所在的行列
    x = r * (-1+1/res:2/res:1-1/res);
    y = r * (-1+1/res:2/res:1-1/res);
    nodeorder=zeros(res,res);
    order=1;

%     if (exist('angle') ~= 1) angle = 0; end %~=是不等于的意思

    for i=1:res
        for j=1:res
            node(res*(i-1)+j,1)=x(i);
            node(res*(i-1)+j,2)=y(j);
            nodeorder(j,i)=order;
            order=order+1;   
        end
    end
    j=1;
    for i=1:res*res
        if node(i,1)^2+node(i,2)^2 <= r^2
            newnode(j,1)=node(i,1);
            newnode(j,2)=node(i,2);
            nodenum(j)=i;
            j=j+1;
        else
            nodeorder(find(nodeorder()==i))=0;%nodeorder是每个元素块的编号
        end
    end
    nodes = newnode;
%    dlmwrite('C:\Users\sunbenyuan\Desktop\zbcs\b.txt', nodes, 'delimiter', '\t','precision', 6,'newline', 'pc');
    nodlist=1;
    for i=1:res
        for j=1:res
            if nodeorder(i,j)~=0
                node_list(nodlist,1)=i;
                node_list(nodlist,2)=j;%                        在这里我调整了i，j位置
                nodlist=nodlist+1;%node_list是在圆内的元素块的坐标
            end
        end
    end
    %以上求灰度值矩阵节点数和坐标
    len=length(nodenum);

%% Empty
%计算空场测量值，需要一个空场脚本
c=cell(1,nE);
   for seq=1:nE
        ex_num=seq;
        b = zeros(1,nE);    %激励测量数值向量 传入空场脚本
        b(1,ex_num) = 1;

        for m=1:nE               
            c{1,m}=[num2str(b(m)) '[A]'];   %激励测量单位向量 传入空场脚本
        end
        run EMT_display_empty1.m       

        Hx(ex_num,:)=mphinterp(model, '(mf.Hx)', 'unit', 'V/m', 'coord', tmr_nodes');  %%只计算TMR上的场强x和y
        Hy(ex_num,:)=mphinterp(model, '(mf.Hy)', 'unit', 'V/m', 'coord', tmr_nodes'); 
            
        for m_seq=1:nT
            me_num=m_seq;
            H_p0(ex_num,me_num)= (Hx(ex_num,me_num).*cos(ang(me_num))  +  Hy(ex_num,me_num).*sin(ang(me_num)));  %TMR上测量值          
            vHp0((seq-1)*nE+m_seq) = H_p0(ex_num, me_num); %排成一列
        end
        seq
   end

%% Measure
% 添加测量物的测量值
for pixel=1:len  %按给定像素循环，尽可能只用独立像素，每次循环非常慢 
    imfname=['D:\bin\test_genim_4x4\' num2str(pixel) '.png']; %被测图像文件，按需生成
    c=cell(1,nE);
   for seq=1:nE
        ex_num=seq;
        b = zeros(1,nE);
        b(1,ex_num) = 1;

        for m=1:nE               
            c{1,m}=[num2str(b(m)) '[A]'];
        end
        run EMT_display_test1.m       

        Hx(ex_num,:)=mphinterp(model, '(mf.Hx)', 'unit', 'V/m', 'coord', tmr_nodes');  
        Hy(ex_num,:)=mphinterp(model, '(mf.Hy)', 'unit', 'V/m', 'coord', tmr_nodes'); 
           
        for m_seq=1:nT
            me_num=m_seq;
            H_p(ex_num,me_num)= (Hx(ex_num,me_num).*cos(ang(me_num))  +  Hy(ex_num,me_num).*sin(ang(me_num))); %TMR对测量物的测量值           
            vHp((seq-1)*nE+m_seq) = H_p(ex_num, me_num);
        end
        seq
   end 
 Sensi0(pixel,:)=(vHp-vHp0)/(0.06-0); %扰动法计算灵敏度矩阵 详见论文：A novel EMT system based on TMR sensors for reconstruction of permeability distribution
 %CirS = zeros(nE*(nE-1)/2,len);
end

 %% Sensi_Normal
 %灵敏度矩阵归一化，沿测量数计算
Sensi=Sensi0';
sum=0;
    for j=1:len               
    for i=1:nE*nT;
        sum=sum+abs(Sensi(i,j));
    end
    Sensi(:,j)=Sensi(:,j)/sum;
    sum=0;
    end 
     
toc
f = msgbox('Operation Completed!', 'Done');