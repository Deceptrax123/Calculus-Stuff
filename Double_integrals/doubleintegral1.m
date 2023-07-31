syms x y z r r1theta
x=r*cos(theta);
y=r*sin(theta);
z=y;

vol=int(int((r*sin(theta))*r,r,0,1),theta,0,pi)
fsurf(x,y,z,[0 pi 0 1])
hold on;
fsurf(r*cos(theta),r*sin(theta),r*sin(theta),[0 1 0 pi])