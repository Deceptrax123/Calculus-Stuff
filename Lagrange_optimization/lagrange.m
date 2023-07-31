syms x y lam 
f=x^2+2*y^2;
cons=x^2+y^2-1;

F=f+lam*cons;


Fj=jacobian(F,[x,y,lam]);
[ax,ay,lam]=solve(Fj,[x y lam]);
T=subs(f,{x,y},{ax,ay});
t1=max(ax);
t2=min(ax);
t3=max(ay);
t4=min(ay);

fcontour(f,[-1 1 -1 1])
hold on;
ezplot(cons)

for i=1:length(T)
    sprintf("The critical point is  (%d,%d) ",ax(i),ay(i))
    plot(ax(i),ay(i))
end


