function [x,y]=forward_Euler(xlhb,xrhb,y0,n,noeq)

dx=(xrhb-xlhb)/n;
x=linspace(xlhb,xrhb,n+1);
y=zeros(length(x),noeq);
y(1,:)=y0(:);

for i=2:n+1
y(i,:)=y(i-1,:)+dx*calc_rhs(x(i-1),y(i-1,:));
endfor
endfunction