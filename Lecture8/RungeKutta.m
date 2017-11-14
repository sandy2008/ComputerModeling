function [Vetx,Vety] = RungeKutta(funcao,a,b,m,y0)
h = (b-a)/m;
xt = a;
yt = y0;
Vetx(1) = xt;
Vety(1)=yt;
disp ('   i   xt    yt');
hold on;
for i=1:m
    x = xt;
    y = yt;
    k1 = y*(1-y);
    x = xt + h/2;
    y = yt + h/2 * k1;
    k2 = y*(1-y);
    y = yt + h/2 * k2;
    k3 = y*(1-y);
    x = xt + h;
    y = yt + h * k3;
    k4=y*(1-y);
    xt = a+i*h;
    yt = yt+h/6*(k1+2*(k2+k3)+k4);
    plot(xt,yt);
endfor
hold off;
end
