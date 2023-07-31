syms x y t
F=[x*sin(y),y];
par=[1/2*t 1/4*t^2];
lims=[-2 4];

ft=subs(F,[x,y],[1/2*t,1/4*t^2]);

Int_factor=diff(par,t);
integrand=dot(ft,Int_factor);

sol=int(integrand,-2,4)

P=inline(vectorize(F(1)),"x","y");
Q=inline(vectorize(F(2)),"x","y");

x=linspace(-1.5,2.5,10);
y=x;
[X,Y]=meshgrid(x,y);
U=P(X,Y);
V=Q(X,Y);
quiver(X,Y,U,V)
hold on;
fplot(1/2*t,1/4*t^2,[-2 4])