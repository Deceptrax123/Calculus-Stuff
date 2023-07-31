syms r phi rho theta

sol=int(int(int(exp(rho)*sin(phi)*rho^2,rho,0,pi/2),phi,0,pi/2),theta,0,pi/2);
rho=4
x=rho*sin(phi)*sin(theta);
y=rho*sin(phi)*cos(theta);
z=rho*cos(phi);

fsurf(x,y,z,[0 pi/2 0 pi],"g")
