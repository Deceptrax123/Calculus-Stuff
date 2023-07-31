clc
clear all


syms x y z real

f=x*y^2;
y1=0;
y2=(5-x)/5;
x1=0;
x2=5;
viewSolid(z,0,f,y,y1,y2,x,x1,x2)

