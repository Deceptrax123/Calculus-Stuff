syms x y z theta phi rho

fsurf(sqrt(x^2+y^2),[-4 4 -4 4])
hold on;
rho=2;

fsurf(rho*cos(theta)*sin(phi),rho*sin(theta)*sin(phi),rho*cos(phi),[0 pi 0 2*pi],"g")
z=0;
fsurf(z)