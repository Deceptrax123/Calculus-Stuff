syms x y z r t
z=x^2+y^2;


fsurf(r*cos(t),r*sin(t),r^2,[0 1 0 2*pi])
hold on;
x=r*cos(t);
y=r*sin(t);
r=2*cos(t);

fsurf(x,y,r,[0 2*pi 0 1])
