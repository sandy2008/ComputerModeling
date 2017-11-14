f=@(x) 1/factorial(x)
for k=3:100
sumT=0;
sumM=0;
sumS=0; 
for i=0:k-1
sumM=sumM+0.5*f(i)+0.5*f(i+1)
endfor
for i=0:k-1
sumT=sumT+f(i); 
endfor
sumS=2*sumM/3+sumT/3;
z(k-2)=abs(sumS-e);
x(k-2)=k;
disp(z);
endfor
plot(x,z);