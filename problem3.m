clear;clc
Aa=xlsread('C:\Users\Administrator\Desktop\������ѵ\����1_ȫ��������ͨ��·��ƽ̨���õ����ݱ�.xls',1);
Bb=xlsread('C:\Users\Administrator\Desktop\������ѵ\����1_ȫ��������ͨ��·��ƽ̨���õ����ݱ�.xls',2);
X=Aa(1:582,2); %��ȡx���ֵ
Y=Aa(1:582,3);%��ȡy���ֵ
for j=1:928
    q=Bb(j,1);%ȡ·�����
    w=Bb(j,2);%ȡ·���յ�
    dist = sqrt((Aa(q,2)-Aa(w,2))^2+(Aa(q,3)-Aa(w,3))^2);
    c = [Aa(q,2:3);Aa(w,2:3)];%����յ�����
    text((Aa(q,2)+Aa(w,2))/2,(Aa(q,3)+Aa(w,3))/2,num2str(dist))
    plot(c(:,1),c(:,2));
    hold on;%������·
end
%axis([200,450,200,450])%����xy�����곤��
plot(X,Y,'LineStyle','none','Marker','o',...
         'MarkerSize',2,'MarkerFace','k',...
         'MarkerEdge','k')%����ɢ��ͼ
for i=1:582
c=num2str(i);
c=[' ',c];
text(X(i),Y(i),c)
end  %��ɢ����
xlabel('X'); ylabel('Y')%��xy�ᶨ��
set(gca,'FontSize',10,'TickDir','in',...
        'TickLength',[0.01,0.01])%��xy��������п̻�,�Լ��̶��ߵ�λ�ó���