f=@(x) cos(x)
g=@(x) cos(x)-x
dg=@(x) -sin(x)-1
Newton(g,dg,1,10^-7)