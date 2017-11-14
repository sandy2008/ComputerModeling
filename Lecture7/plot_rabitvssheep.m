n=10000;
noeq=2;
xlhb=0;
xrhb=2;

xlabel("x");
ylabel("y");

hold ("on")

for i=0:10
for j=0:10
y0(1)=i/10;
y0(2)=j/10;
[x,y]=forward_Euler(xlhb,xrhb,y0,n,noeq);
plot(x,y(:,1)./y(:,2));
endfor
endfor

hold ("off")