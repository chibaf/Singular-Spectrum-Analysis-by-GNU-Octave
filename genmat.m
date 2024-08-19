function x=genmat(c)
  m=size(c)(2);
  n=floor(m/2);
  clearvars x;
  for j=1:n;for i=1:m-n+1;x(i,j)=c(i+j-1);endfor;endfor;
endfunction