function returnmap(f,lamda,x0,n,m)
  hold on;
  for i=1:50
    x(i,1)=(lamda+0.02*i)*f(x0);
    for t=2:n-1
      x(i,t)=(lamda+0.02*i)*f(x(i,t-1));
      endfor
    for t=n:m
      x(i,t)=(lamda+0.02*i)*f(x(i,t-1));
      plot(lamda+0.02*i,x(i,t));
      endfor
    endfor
  endfunction