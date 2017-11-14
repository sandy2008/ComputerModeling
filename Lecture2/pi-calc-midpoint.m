f=@(x) sqrt(1-x*x);
for k=1:1000
sum=0; 
for i=0:k-1
sum=sum+2/k*f(-1+1/k+2*i/k); 
endfor
y(k)=abs(2*sum-pi); 
x(k)=k;
endfor
plot(log(x),log(y));