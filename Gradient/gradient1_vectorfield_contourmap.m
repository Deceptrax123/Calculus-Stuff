syms x y z
f=x^2+y^2;
F=gradient(f);

P=inline(vectorize(F(1)),"x","y"); 
Q=inline(vectorize(F(2)),"x","y");

a=linspace(-5,5,10);
b=a;
[X,Y]=meshgrid(a,b);

U=P(X,Y);
V=Q(X,Y);
quiver(X,Y,U,V);
hold on;
fcontour(f,[-5 5])
