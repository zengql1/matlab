syms T t t0 k m ;
yy = dsolve('DT = -k*(T-m)','T(0)=37', 't');
yy=subs(yy,m,10);
yy0=subs(yy,t,t0);
yy60=subs(yy,t,t0+60);
yy0=char(yy0);
yy0=strcat(yy0,'-26=0');
yy60=char(yy60);
yy60=strcat(yy60,'-18=0');
[kk,tt0]=solve(yy0,yy60,k,t0);
kk=double(kk);
tt0=double(tt0);

ht=6-fix(tt0./60);
mt=fix(0-mod(tt0,60));

exp1=strcat('该受害者的死亡时间为:',num2str(ht), '时',num2str(mt),'分');
disp(exp1)