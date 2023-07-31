syms x y z
F=[(2*x*y+z^3) x^2 3*x*z^2];
curlF=curl(F,[x,y,z]);
if curlF==[0 0 0]
    f=potential(F,[x,y,z])
end
