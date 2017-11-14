function RungeKuttaLimit(a,b,m,y0,z0)
h = (b-a)/m;
xt = a;
yt(1) = y0;
yt(2) = z0;
hold on;
for i=1:m   
    x = xt;
    y = yt;
    y(1) = yt(1);
    y(2) = yt(2);
    k1(1) = (1-y(1).^2)*y(1)-y(2);
    k1(2) = y(1);
    x = xt + h/2;
    y(1) = yt(1) + h/2 * k1(1);
    y(2) = yt(2) + h/2 * k1(2);
    k2(1) = (1-y(1).^2)*y(1)-y(2);
    k2(2) = y(1);
    y(1) = yt(1) + h/2 * k2(1);
    y(2) = yt(2) + h/2 * k2(2);
    k3(1) = (1-y(1).^2)*y(1)-y(2);
    k3(2) = y(1);
    x = xt + h;
    y(1) = yt(1) + h * k3(1);
    y(2) = yt(2) + h * k3(2);
    k4(1) = (1-y(1).^2)*y(1)-y(2);
    k4(2) = y(1);
    xt = a+i*h;
    yt(1) = yt(1)+h/6*(k1(1)+2*(k2(1)+k3(1))+k4(1));
    yt(2) = yt(2)+h/6*(k1(2)+2*(k2(2)+k3(2))+k4(2));
    plot(yt(2),yt(1));
endfor
hold off;
end
