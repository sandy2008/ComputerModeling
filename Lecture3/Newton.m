function Newton(f,df,a,tolerance)
b=0;
iters=0;
while(abs(b-f(a))>tolerance)
b=f(a);
a=a-f(a)./df(a);
iters++;
endwhile
disp("answer="),disp(a);
disp("iters="),disp(iters);
endfunction