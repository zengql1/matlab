clear;clc
Aa=xlsread('C:\Users\Administrator\Desktop\计算培训\附件1_全市六区交通网路和平台设置的数据表.xls',1);
Bb=xlsread('C:\Users\Administrator\Desktop\计算培训\附件1_全市六区交通网路和平台设置的数据表.xls',2);
X=Aa(1:92,2); %读取x轴的值
Y=Aa(1:92,3);%读取y轴的值
%qi = inputdlg('请输路口起点标号：');
%zhong = inputdlg('请输路口终点标号：');
for j=1:143
    q=Bb(j,1);%取路口起点
    w=Bb(j,2);%取路口终点
    dist(j) = sqrt((Aa(q,2)-Aa(w,2))^2+(Aa(q,3)-Aa(w,3))^2);%计算两点之间的距离
    %xlswrite('C:\Users\Administrator\Desktop\距离.xls',dist)
    c = [Aa(q,2:3);Aa(w,2:3)];%起点终点坐标
    text((Aa(q,2)+Aa(w,2))/2,(Aa(q,3)+Aa(w,3))/2,num2str(dist));%对两点之间的距离进行标号
    plot(c(:,1),c(:,2));
    hold on;%绘制线路
end
%axis([200,450,200,450])%限制xy的坐标长度
plot(X,Y,'LineStyle','none','Marker','o',...
         'MarkerSize',2,'MarkerFace','k',...
         'MarkerEdge','k')%画出散点图
for i=1:92
c=num2str(i);
c=[' ',c];
text(X(i),Y(i),c)
end  %给散点标号
xlabel('X'); ylabel('Y')%给xy轴定义
set(gca,'FontSize',10,'TickDir','in',...
        'TickLength',[0.01,0.01])%对xy轴坐标进行刻画,以及刻度线的位置长度