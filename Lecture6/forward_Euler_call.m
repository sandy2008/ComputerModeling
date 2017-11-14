n=10000;
noeq=2;
xlhb=0;
xrhb=20;

xlabel("x");
ylabel("y");

hold ("on")

y0(1)=0.5;
y0(2)=0.5;
[x,y]=forward_Euler(xlhb,xrhb,y0,n,noeq);

plot(x,y(:,1))
plot(x,y(:,2),'r')
hold ("off")