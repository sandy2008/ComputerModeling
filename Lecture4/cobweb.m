function cobweb(f,lhb,rhb,x0,n)
  hold on;
  z=linspace(lhb,rhb,100);
  plot(z,f(z),'k');
  plot(z,z,'b');
  x=x0;
  for i=1:n
    xp=f(x);
    line([x,x],[x,xp],'color','red');
    line([x,xp],[xp,xp],'color','red');
    x=xp;
  end
  hold off;
