syms x y z r theta 

fsurf(4*cos(theta),4*sin(theta),r,[-5 4 0 2*pi])
hold on;
z=4;
fsurf(z)
z=-5;
fsurf(z)