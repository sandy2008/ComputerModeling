f=@(x) cos(x)
g=@(x) cos(x)-x
dg=@(x) -sin(x)-1cobweb(f,-0.5,2,1,10)
Newton(g,dg,1,10^-7)