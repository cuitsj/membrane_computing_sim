close all;
clear all;

%% QԽ��Խ���β���ֵ����������Խ��
%% RԽ��Խ����Ԥ��ֵ������Խƽ��
Q=60;   %����Э�������
R=8;   %�۲�Э�������
truth(1) = 4096;              %��ʵֵ��ʼֵ
Xt_hat(1)=4096;               %Ԥ���ֵ
Pt(1)=0;                     %Ԥ��ֵ����ʵֵ֮������Э�������
v=100*randn(1,100);           %������������

for i=2:100
    truth(i)=4096;                  %��ʵֵ
    origin_data(i)=truth(i)+v(i);   %����ֵ
%     %% һάԭʼ��ʽ
%     %%Ԥ��
%     Xt_hat_(i) = Xt_hat(i-1);          %������һ�ε����Ź���ֵ���㵱ǰԤ��ֵ
%     Pt_(i) = Pt(i-1)+Q;                %����Ԥ��ֵ����ʵֵ֮������Э�������
%     %%����
%     Kt(i) = Pt_(i)/(Pt_(i)+R);
%     Xt_hat(i) = Xt_hat_(i) + Kt(i)*(origin_data(i) - Xt_hat_(i));
%     Pt(i) = Pt_(i) - Kt(i) * Pt_(i);

    %% ��
    Xt_hat(i)=Xt_hat(i-1)+(origin_data(i) - Xt_hat(i-1))*(Pt(i-1)+Q)/(Pt(i-1)+Q+R);
    Pt(i)=(Pt(i-1)*R+Q*R)/(Pt(i-1)+Q+R);
    %Pt(i)=10;
    

end
n=1:100;
subplot(2,1,1)
plot(n,truth,'k','linewidth',1);         %����Ԥ��ֵ
hold on;

plot(n,origin_data,'b','linewidth',1);          %���Ʋ���ֵ
hold on;
plot(n,Xt_hat,'g','linewidth',1);         %���ƹ���ֵ
hold on;
plot(n,truth-Xt_hat,'r','linewidth',1);       %�������
legend('��ʵֵ','����ֵ','����ֵ','���')
grid
subplot(2,1,2)
plot(n,Pt,'k','linewidth',1);         %����Ԥ��ֵ
grid
% n=1:100;
% subplot(2,1,1)
% plot(n,truth,'k','linewidth',1);         %����Ԥ��ֵ
% hold on;
% plot(n,Xt_hat_,'r','linewidth',1);         %����Ԥ��ֵ
% hold on;
% plot(n,origin_data,'b','linewidth',1);          %���Ʋ���ֵ
% hold on;
% plot(n,Xt_hat,'g','linewidth',1);         %���ƹ���ֵ
% hold on;
% plot(n,truth-Xt_hat,'y','linewidth',1);       %�������
% legend('��ʵֵ','Ԥ��ֵ','����ֵ','����ֵ','���')
% grid
% subplot(2,1,2)
% plot(n,Pt_,'k','linewidth',1);         %����Ԥ��ֵ
% hold on;
% plot(n,Kt,'b','linewidth',1); %���ƿ���������
% legend('����������')
% grid