clear;clc;close all;
tic
    %% ��������
    nE = 12; %������       
    res=64; %����64*64
    r=50; %�ܵ��ڰ뾶 mm
    last_ex_num = 0; 
    %% �������ɣ���Ҫ���ڲ���node_list,��nodes
    %nodes���ڷż���ĵ糡ǿ�ȣ�node_list�ڳ����й涨����ֵλ��
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
    seq_max= max(max(mECT)); %mECTΪ��������˳�����ֻ�������ǲ�����Ч

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
            nodeorder(find(nodeorder()==i))=0;%nodeorder��ÿ��Ԫ�ؿ�ı��
        end
    end
    nodes = newnode;                  
    nodlist=1;
    for i=1:res
        for j=1:res
            if nodeorder(i,j)~=0
                node_list(nodlist,1)=i;
                node_list(nodlist,2)=j;
                nodlist=nodlist+1;%node_list����Բ�ڵ�Ԫ�ؿ������
            end
        end
    end
    j=1;
    len=length(nodenum);
  
    Ex = zeros(nE, length(nodes));%%x����糡��ǿ
    Ey = zeros(nE, length(nodes));%%y����糡��ǿ
    
    
    %% �����ȼ��㲿��
    
    %% Empty_E 
    %����ճ�״̬�£���������ѭ���еĵ糡ǿ�ȷֲ�����Ҫ����һ���ճ��ű�
    for seq=seq_min:seq_max
        [ex_num, me_num] = find(mECT==seq); %�����Ͳ����缫���

        b = zeros(1,nE); %%����������ֵ����������ű�
        b(1,ex_num) = 5;

        if ex_num ~= last_ex_num   
         run ECT_12x_empty4.m
     
            Ex(ex_num,:) = mphinterp(model, 'es.Ex', 'unit', 'V/m', 'coord', nodes');%x����ǿ
            Ey(ex_num,:) = mphinterp(model, 'es.Ey', 'unit', 'V/m', 'coord', nodes');%y����ǿ
        end
        seq
        last_ex_num  = ex_num;   
    end
   
    
    %% Sensi_Calculation
    CirS = zeros(seq_max, length(nodes)); 
    for seq=seq_min:seq_max
        [ex_num, me_num] = find(mECT==seq);  
            CirS(seq,:) = -(Ex(ex_num,:).*Ex(me_num,:) + Ey(ex_num,:).*Ey(me_num,:)); %���������������Ⱦ��󣬿��Բ������˽�
    end    
    
    st=[]; %ȡ�����������������ǵĶ�Ӧ����
    for i=1:nE-1
        stt=CirS(((i-1)*(nE-1)+i):(i*(nE-1)),:);
        st=[st;stt];
    end
    
   %% Sensi_normalization
   %SensiΪ�����Ⱦ���
   Sensi=st;
   sum=0;
    for j=1:len                
    for i=1:nE*(nE-1)/2
        sum=sum+Sensi(i,j);
    end
    Sensi(:,j)=Sensi(:,j)/sum;
    sum=0;
    end 

   %% ����ֵ���㲿��  
    
   %% Empty_Measure
   %��������󣬰ѿ���������ר��дһ���ļ�����󱣴棬���ⷴ������
   
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
    %������Ҫһ�������ű�
    for seq=seq_min:seq_max
        [ex_num, me_num] = find(mECT==seq);
        b = zeros(1,nE);
        b(1,ex_num) = 5;

        if ex_num ~= last_ex_num   
         run ECT_12x_full4.m
        end
        
         % ����������ֵ
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
     %CΪ�����ò���ֵ
    c_matrix=(measCi-measCe)./(measCf-measCe);
    
    ct=[]; %ѡȡ��Ч����
    for i=1:nE-1
        ctt=c_matrix(i,i+1:nE);
        ct=[ct,ctt];
    end
    C=ct';
    stem(C) %�۲�U�Ͳ������ߣ�������Ǽ���U�͵ģ�
    toc
    f = msgbox('Operation Completed!', 'Done');