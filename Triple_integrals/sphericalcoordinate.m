syms r z phi rho theta
rho=5;
x=rho*sin(phi)*cos(theta);
y=rho*sin(phi)*sin(theta);
z=rho*cos(phi);
fsurf(z,y,z,[0 pi 0 2*pi])

