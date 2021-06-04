clear;
x=0;0.2;2*pi;
[x,y]=meshgrid(x);
z=sin(y).*cos(x);
surf(x,y,z);
xlabel('X_axis'),ylabel('y_axis'),zlabel('z_axis');
title('surf')
