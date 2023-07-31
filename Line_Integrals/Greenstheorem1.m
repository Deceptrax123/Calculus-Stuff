syms x y t
f=[3*y-exp(sin(x)),7*x+sqrt(y^4+1)];
para=[3*cos(t) 3*sin(t)];

p=f(1);
q=f(2);

integrand=diff(q,x)-diff(p,y);
inte_para=subs(integrand,[x y],[3*cos(t) 3*sin(t)])*r;

ans=int(int(inte_para,0,3),0,2*pi)

P=inline(vectorize(f(1)),"x","y");
Q=inline(vectorize(f(2)),"x","y");
x=linspace(-3,3,10);
y=x;
[X,Y]=meshgrid(x,y);
U=P(X,Y);
V=Q(X,Y);
quiver(X,Y,U,V);
hold on
xlabel("X");
ylabel("Y");
fplot(3*cos(t),3*sin(t),[0 2*pi])


