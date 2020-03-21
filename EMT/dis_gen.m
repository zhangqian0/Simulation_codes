clear;
clc;
close all;


    %% ��������
    nE = 16; %������       
    res=4; %�Ҷ�ֵ
    r=50; %�ܵ��ڰ뾶 mm
    last_ex_num = 0;%��һ�������缫���

    %% mECTΪһ�����½�Ϊ�㣬���Ͻ�Ϊ���ֵľ���������¼λ��
    seq=1;
    mECT=zeros(nE, nE);
    for i=1:nE
        for j=1:nE
            mECT(i,j)=seq;
            if i==j
                mECT(i,j)=0;
                seq=seq-1;
            end
            seq=seq+1;
        end
    end
    seq_min= 1;
    seq_max= max(max(mECT));

    %% ������nodes�ڵ�����λ��
    x = r * (-1+1/res:2/res:1-1/res);
    y = r * (-1+1/res:2/res:1-1/res);
    z = 25;
    nodeorder=zeros(res,res);
    order=1;



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
        if node(i,1)^2+node(i,2)^2 <= r^2 %&& node(i,1)^2+node(i,2)^2 >= 22^2 % && node(i,1)>=0 && node(i,2)>=0
            newnode(j,1)=node(i,1);
            newnode(j,2)=node(i,2);
            nodenum(j)=i;
            j=j+1;
        else
            nodeorder(find(nodeorder()==i))=0;%nodeorder��ÿ��Ԫ�ؿ�ı��
        end
    end
    nodes = newnode;                  
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
    j=1;
  
    len=length(nodenum);
    
mark=[4,2;4,3;3,1;3,2;3,3;3,4;2,1;2,2;2,3;2,4;1,2;1,3];
 for i=1:12
     g=zeros(4,4);     
     g(mark(i,1),mark(i,2))=1;
     outname=['D:\bin\test_genim_4x4\' num2str(i) '.png']; %���޸�·��
     imwrite(g,outname)
    % pause(1)
     pcolor(g)
 end
     