syms x y z t
f=[y^2 -2*x^2]
lim=[0 1];

para=[1/2*t,1/2*t^2]
ne=subs(f,[x y],para);

de_vector=diff(para,t);
integrand=dot(ne,de_vector);

ans=int(integrand,0,1);
ans








