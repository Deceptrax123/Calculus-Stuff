syms r z theta k mass
mass=int(int(int(k*r^2,z,1-r^2,4),r,0,1),theta,0,2*pi)
x=r*cos(theta);
y=r*sin(theta);
s=sym(4);

fsurf(x,y,1-r^2,[0 1 0 2*pi],"g","EdgeColor","none")
hold on;
fsurf(1*cos(theta),1*sin(theta),r,[0 4 0 2*pi])
fsurf(x,y,s,[0 1 0 2*pi])
xlabel('X');
ylabel("Y");
zlabel("Z");
axis equal;
alpha  0.50
hold off;



