clear; clc; close all;
tic
%% Sensor parameter
    nE = 12; %������       
    nT=12; %TMR��
    res=4; %����Ϊ32*32
    r=47; %�ܵ��ڰ뾶
    ang=pi*(270:-30:-60)/180; %TMR����������λ�õĽǶȣ�������������λ��
    coor_x=(r+3)*cos(ang);    
    coor_y=(r+3)*sin(ang);
    tmr_nodes=[coor_x',coor_y']; 
%% Nodes generation    
%��һ�������� node_list�ã��������ÿ��Ϊһ���������ڵ�����
    x = r * (-1+1/res:2/res:1-1/res);
    y = r * (-1+1/res:2/res:1-1/res);
    nodeorder=zeros(res,res);
    order=1;

%     if (exist('angle') ~= 1) angle = 0; end %~=�ǲ����ڵ���˼

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
            nodeorder(find(nodeorder()==i))=0;%nodeorder��ÿ��Ԫ�ؿ�ı��
        end
    end
    nodes = newnode;
%    dlmwrite('C:\Users\sunbenyuan\Desktop\zbcs\b.txt', nodes, 'delimiter', '\t','precision', 6,'newline', 'pc');
    nodlist=1;
    for i=1:res
        for j=1:res
            if nodeorder(i,j)~=0
                node_list(nodlist,1)=i;
                node_list(nodlist,2)=j;%                        �������ҵ�����i��jλ��
                nodlist=nodlist+1;%node_list����Բ�ڵ�Ԫ�ؿ������
            end
        end
    end
    %������Ҷ�ֵ����ڵ���������
    len=length(nodenum);

%% Empty
%����ճ�����ֵ����Ҫһ���ճ��ű�
c=cell(1,nE);
   for seq=1:nE
        ex_num=seq;
        b = zeros(1,nE);    %����������ֵ���� ����ճ��ű�
        b(1,ex_num) = 1;

        for m=1:nE               
            c{1,m}=[num2str(b(m)) '[A]'];   %����������λ���� ����ճ��ű�
        end
        run EMT_display_empty1.m       

        Hx(ex_num,:)=mphinterp(model, '(mf.Hx)', 'unit', 'V/m', 'coord', tmr_nodes');  %%ֻ����TMR�ϵĳ�ǿx��y
        Hy(ex_num,:)=mphinterp(model, '(mf.Hy)', 'unit', 'V/m', 'coord', tmr_nodes'); 
            
        for m_seq=1:nT
            me_num=m_seq;
            H_p0(ex_num,me_num)= (Hx(ex_num,me_num).*cos(ang(me_num))  +  Hy(ex_num,me_num).*sin(ang(me_num)));  %TMR�ϲ���ֵ          
            vHp0((seq-1)*nE+m_seq) = H_p0(ex_num, me_num); %�ų�һ��
        end
        seq
   end

%% Measure
% ��Ӳ�����Ĳ���ֵ
for pixel=1:len  %����������ѭ����������ֻ�ö������أ�ÿ��ѭ���ǳ��� 
    imfname=['D:\bin\test_genim_4x4\' num2str(pixel) '.png']; %����ͼ���ļ�����������
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
            H_p(ex_num,me_num)= (Hx(ex_num,me_num).*cos(ang(me_num))  +  Hy(ex_num,me_num).*sin(ang(me_num))); %TMR�Բ�����Ĳ���ֵ           
            vHp((seq-1)*nE+m_seq) = H_p(ex_num, me_num);
        end
        seq
   end 
 Sensi0(pixel,:)=(vHp-vHp0)/(0.06-0); %�Ŷ������������Ⱦ��� ������ģ�A novel EMT system based on TMR sensors for reconstruction of permeability distribution
 %CirS = zeros(nE*(nE-1)/2,len);
end

 %% Sensi_Normal
 %�����Ⱦ����һ�����ز���������
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