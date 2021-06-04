clear;clc
Aa=xlsread('C:\Users\Administrator\Desktop\计算培训\附件1_全市六区交通网路和平台设置的数据表.xls',1);
Bb=xlsread('C:\Users\Administrator\Desktop\计算培训\附件1_全市六区交通网路和平台设置的数据表.xls',2);
X=Aa(1:582,2); %读取x轴的值
Y=Aa(1:582,3);%读取y轴的值
for j=1:928
    q=Bb(j,1);%取路口起点
    w=Bb(j,2);%取路口终点
    c = [Aa(q,2:3);Aa(w,2:3)];%起点终点坐标
    plot(c(:,1),c(:,2));
    hold on;%绘制线路
end
%axis([200,450,200,450])%限制xy的坐标长度
plot(X,Y,'LineStyle','none','Marker','o',...
         'MarkerSize',2,'MarkerFace','k',...
         'MarkerEdge','k')%画出散点图
for i=1:582
c=num2str(i);
c=[' ',c];
text(X(i),Y(i),c)
end  %给散点标号
xlabel('X'); ylabel('Y')%给xy轴定义
set(gca,'FontSize',10,'TickDir','in',...
        'TickLength',[0.01,0.01])%对xy轴坐标进行刻画,以及刻度线的位置长度