function x=sn(xx)
  nn=size(xx);
  j=0;sum=0.0;i1=0;
%
  for i=1:nn(1)
    for k=1:i
      if (k<=nn(2))
        sum=sum+xx(i-k+1,k);
        j=j+1;
      endif
    endfor
    i1=i1+1;
    x(i1)=sum/j;
    sum=0.0;
    j=0
   endfor
%
  for i=2:nn(2)
    for k=1:n-1+1
      if (k<=nn(1)
        sum=sum+xx(nn(1) - k + 1, k + i - 1);
        j=j+1
      endif
    endfor
    i1=i1+1;
    x(i1)=sum/j;
    sum=0.0;
    j=0;
  endfor
endfunction