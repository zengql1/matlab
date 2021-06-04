clc,clear
syms m V rho g k t real
v=dsolve('m*Dv-m*g+rho*g*V+k*v^2','v(0)=0');
v=subs(v,{m,V,rho,g,k},{239.46,0.2058,1035.71,9.8,0.6});
v=vpa(v,7) %求速度函数
v1=real(v),v2=imag(v) %求速度函数的实部和虚部
tt=solve(v1-12.2) %求时间的临界值 T
s=int(v1,0,tt) %求位移的临界值
