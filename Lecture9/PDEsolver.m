%%% Initialize variables
nt=100;
nx=100;
x=[-1:2/nx:1]
U=zeros(nx+1,nt+1);
U(:,1)=exp(-100*x.^2);
U(1,:)=0;
U(nx+1,:)=0;
for j=1:nt
U(2:nx,j+1)=U(2:nx,j)+0.005*(1/nt)/(1/nx).^2.*(U(1:(nx-1),j)-2*U(2:nx,j)+U(3:(nx+1),j)); %iterations\
endfor
