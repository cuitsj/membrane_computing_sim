close all;
clear all;

%% Q越大，越信任测量值，波形噪音越大
%% R越大，越信任预测值，波形越平滑
Q=60;   %过程协方差矩阵
R=8;   %观测协方差矩阵
truth(1) = 4096;              %真实值初始值
Xt_hat(1)=4096;               %预测初值
Pt(1)=0;                     %预测值与真实值之间误差的协方差矩阵
v=100*randn(1,100);           %测量误差（噪声）

for i=2:100
    truth(i)=4096;                  %真实值
    origin_data(i)=truth(i)+v(i);   %测量值
%     %% 一维原始公式
%     %%预测
%     Xt_hat_(i) = Xt_hat(i-1);          %根据上一次的最优估计值计算当前预测值
%     Pt_(i) = Pt(i-1)+Q;                %计算预测值与真实值之间误差的协方差矩阵
%     %%更新
%     Kt(i) = Pt_(i)/(Pt_(i)+R);
%     Xt_hat(i) = Xt_hat_(i) + Kt(i)*(origin_data(i) - Xt_hat_(i));
%     Pt(i) = Pt_(i) - Kt(i) * Pt_(i);

    %% 简化
    Xt_hat(i)=Xt_hat(i-1)+(origin_data(i) - Xt_hat(i-1))*(Pt(i-1)+Q)/(Pt(i-1)+Q+R);
    Pt(i)=(Pt(i-1)*R+Q*R)/(Pt(i-1)+Q+R);
    %Pt(i)=10;
    

end
n=1:100;
subplot(2,1,1)
plot(n,truth,'k','linewidth',1);         %绘制预测值
hold on;

plot(n,origin_data,'b','linewidth',1);          %绘制测量值
hold on;
plot(n,Xt_hat,'g','linewidth',1);         %绘制估计值
hold on;
plot(n,truth-Xt_hat,'r','linewidth',1);       %绘制误差
legend('真实值','测量值','估计值','误差')
grid
subplot(2,1,2)
plot(n,Pt,'k','linewidth',1);         %绘制预测值
grid
% n=1:100;
% subplot(2,1,1)
% plot(n,truth,'k','linewidth',1);         %绘制预测值
% hold on;
% plot(n,Xt_hat_,'r','linewidth',1);         %绘制预测值
% hold on;
% plot(n,origin_data,'b','linewidth',1);          %绘制测量值
% hold on;
% plot(n,Xt_hat,'g','linewidth',1);         %绘制估计值
% hold on;
% plot(n,truth-Xt_hat,'y','linewidth',1);       %绘制误差
% legend('真实值','预测值','测量值','估计值','误差')
% grid
% subplot(2,1,2)
% plot(n,Pt_,'k','linewidth',1);         %绘制预测值
% hold on;
% plot(n,Kt,'b','linewidth',1); %绘制卡尔曼增益
% legend('卡尔曼增益')
% grid