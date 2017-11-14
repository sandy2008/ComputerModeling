for k=1:1000
hit=0;
for i=1:k
m=rand(1,2);
if (m(1)*(m(2)+1))<=1
hit++;
endif
endfor
z(k)=2^(k/hit);
x(k)=k;
disp(z);
endfor
plot(x,z);