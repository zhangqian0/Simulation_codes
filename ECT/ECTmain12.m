clear;clc;close all;
tic
    %% 基本参数
    nE = 12; %极板数       
    res=64; %像素64*64
    r=50; %管道内半径 mm
    last_ex_num = 0; 
    %% 网格生成，主要用于产生node_list,和nodes
    %nodes用于放计算的电场强度，node_list在成像中规定像素值位置
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
    seq_max= max(max(mECT)); %mECT为激励测量顺序矩阵，只有上三角部分有效

    x = r * (-1+1/res:2/res:1-1/res);
    y = r * (-1+1/res:2/res:1-1/res);
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
    nodlist=1;
    for i=1:res
        for j=1:res
            if nodeorder(i,j)~=0
                node_list(nodlist,1)=i;
                node_list(nodlist,2)=j;
                nodlist=nodlist+1;%node_list是在圆内的元素块的坐标
            end
        end
    end
    j=1;
    len=length(nodenum);
  
    Ex = zeros(nE, length(nodes));%%x方向电场场强
    Ey = zeros(nE, length(nodes));%%y方向电场场强
    
    
    %% 灵敏度计算部分
    
    %% Empty_E 
    %计算空场状态下，激励测量循环中的电场强度分布，需要传入一个空场脚本
    for seq=seq_min:seq_max
        [ex_num, me_num] = find(mECT==seq); %激励和测量电极序号

        b = zeros(1,nE); %%激励测量数值向量，传入脚本
        b(1,ex_num) = 5;

        if ex_num ~= last_ex_num   
         run ECT_12x_empty4.m
     
            Ex(ex_num,:) = mphinterp(model, 'es.Ex', 'unit', 'V/m', 'coord', nodes');%x方向场强
            Ey(ex_num,:) = mphinterp(model, 'es.Ey', 'unit', 'V/m', 'coord', nodes');%y方向场强
        end
        seq
        last_ex_num  = ex_num;   
    end
   
    
    %% Sensi_Calculation
    CirS = zeros(seq_max, length(nodes)); 
    for seq=seq_min:seq_max
        [ex_num, me_num] = find(mECT==seq);  
            CirS(seq,:) = -(Ex(ex_num,:).*Ex(me_num,:) + Ey(ex_num,:).*Ey(me_num,:)); %场量法计算灵敏度矩阵，可以查文献了解
    end    
    
    st=[]; %取激励测量矩阵上三角的对应部分
    for i=1:nE-1
        stt=CirS(((i-1)*(nE-1)+i):(i*(nE-1)),:);
        st=[st;stt];
    end
    
   %% Sensi_normalization
   %Sensi为灵敏度矩阵
   Sensi=st;
   sum=0;
    for j=1:len                
    for i=1:nE*(nE-1)/2
        sum=sum+Sensi(i,j);
    end
    Sensi(:,j)=Sensi(:,j)/sum;
    sum=0;
    end 

   %% 测量值计算部分  
    
   %% Empty_Measure
   %如果有需求，把空满场部分专门写一个文件计算后保存，避免反复计算
   
    for seq=seq_min:seq_max
        [ex_num, me_num] = find(mECT==seq);

        b = zeros(1,nE);
        b(1,ex_num) = 5;

        if ex_num ~= last_ex_num   
         run ECT_12x_empty4.m
        end
        
         
         if (ex_num >=10 | me_num >=10) % little trick
         measCe(ex_num, me_num) = -mphglobal(model,['es.C' num2str(me_num) '_' num2str(ex_num)]);
         else
         measCe(ex_num, me_num) = -mphglobal(model,['es.C' num2str(me_num) num2str(ex_num)]);
         end
        seq
        last_ex_num  = ex_num;   
    end
    
    %% Full_Measure
    %这里需要一个满场脚本
    for seq=seq_min:seq_max
        [ex_num, me_num] = find(mECT==seq);
        b = zeros(1,nE);
        b(1,ex_num) = 5;

        if ex_num ~= last_ex_num   
         run ECT_12x_full4.m
        end
        
         % 求满场电容值
         if (ex_num >=10 | me_num >=10)
         measCf(ex_num, me_num) = -mphglobal(model,['es.C' num2str(me_num) '_' num2str(ex_num)]);
         else
         measCf(ex_num, me_num) = -mphglobal(model,['es.C' num2str(me_num) num2str(ex_num)]);
         end
     
        seq
        last_ex_num  = ex_num;   
    end
    
    %% Measure
    for seq=seq_min:seq_max
        [ex_num, me_num] = find(mECT==seq);
        b = zeros(1,nE);
        b(1,ex_num) = 5;
        if ex_num ~= last_ex_num   
         run ECT_12x_image9.m
        end
         if (ex_num >=10 | me_num >=10)
         measCi(ex_num, me_num) = -mphglobal(model,['es.C' num2str(me_num) '_' num2str(ex_num)]);
         else
         measCi(ex_num, me_num) = -mphglobal(model,['es.C' num2str(me_num) num2str(ex_num)]);
         end

        
        seq
        last_ex_num  = ex_num;   
    end
    
    %% Capacitance_normalization
     %C为成像用测量值
    c_matrix=(measCi-measCe)./(measCf-measCe);
    
    ct=[]; %选取有效部分
    for i=1:nE-1
        ctt=c_matrix(i,i+1:nE);
        ct=[ct,ctt];
    end
    C=ct';
    stem(C) %观察U型测量曲线（它大概是几个U型的）
    toc
    f = msgbox('Operation Completed!', 'Done');