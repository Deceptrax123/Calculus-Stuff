syms x
f1=x^2-2*x;
f2=x;
fplot(f1);
hold on;

F=inline(vectorize(f1));
F1=inline(vectorize(f2));
fplot(f2);

poix=solve(f1-f2);
poiy=[subs(f1,x,poix(1)),subs(f1,x,poix(2))];

%From the plot, obtain upper and lower curve and points of intersection
area=int((f2-f1),x,poix(1),poix(2))
x=linspace(0,3,10);
plot(x,F(x),"LineStyle","-","Color","b","LineWidth",1)
plot(x,F1(x),"Linestyle","-","Color","b","LineWidth",1)



