f=@(x) sqrt(1-x*x);
for k=3:1000
sumT=0;
sumM=0;
sumS=0; 
for i=0:k-2
sumM=sumM+1/k*f(-1+1/k+2*i/k)+1/k*f(-1+1/k+2*(i+1)/k); 
endfor
for i=0:k-1
sumT=sumT+2/k*f(-1+1/k+2*i/k); 
endfor
sumS=2*sumM/3+sumT/3;
y(k)=abs(2*sumM-pi); 
z(k)=abs(2*sumS-pi);
x(k)=k;
endfor
plot(log(x),log(y),log(x),log(z));