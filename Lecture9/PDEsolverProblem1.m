%%% Initialize variables
nt=10000;
nx=100;
x=[-1:2/nx:1]
U=zeros(nx+1,nt+1);
U(:,1)=x.*(1+sin(pi.*x));
U(1,:)=0;
U(nx+1,:)=1;
for j=1:nt
U(2:nx,j+1)=U(2:nx,j)+0.02*(U(1:(nx-1),j)-2*U(2:nx,j)+U(3:(nx+1),j)); %iterations\
endfor

hold on
for i=1:500:10000 plot(x,U(:,i)) endfor