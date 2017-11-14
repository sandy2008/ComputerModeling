function rhs=calc_rhs(x,y)
rhs(1)=y(1)*(1-y(2));
rhs(2)=y(2)*(y(1)-1);
endfunction;