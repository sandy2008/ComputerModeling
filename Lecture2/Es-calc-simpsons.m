f=@(x) 2*x*x*x-5*x*x+x-1;
for k=3:1000
sumT=0;
sumM=0;
sumS=0; 
for i=0:k-2
sumM=sumM+0.5/k*f(0.5/k+i/k)+0.5/k*f(0.5/k+(i+1)/k); 
endfor
for i=0:k-1
sumT=sumT+1/k*f(0.5/k+i/k); 
endfor
sumS=2*sumM/3+sumT/3;
z(k)=abs(sumS+5/3);
x(k)=k;
disp(z);
endfor
plot(log(x),log(z));