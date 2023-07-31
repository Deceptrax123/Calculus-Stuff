syms x y z real
F=input("Enter vector as i j k")

curl_F=curl(F,[x,y,z])
if(curl_F==[0 0 0]):
    f=potential(F,[x y z])
else:
    sprintf("Curl_f isnt 0")
end
