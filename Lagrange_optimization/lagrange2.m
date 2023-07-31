syms x y t
f=3*x+4*y;
phi=x^2+y^2-1;

F=f+t*phi;
Fd=jacobian(F,[x y t]);
[ax,ay,at]=solve(Fd,x,y,t);

T=subs(f,{x y},{ax ay});
%Plotting

ezcontour(f,[-3/5-0.5,3/5+0.5,-4/5-0.5,4/5+0.5])
hold on;

ezplot(phi,[-3/5-0.5,3/5+0.5,-4/5-0.5,4/5+0.5])
