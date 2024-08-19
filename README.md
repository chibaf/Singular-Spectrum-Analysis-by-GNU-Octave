# Singular-Spectrum-Analysis-by-GNU-Octave
Singular_Spectrum_Analysis-by-GNU Octave

## make test data

<pre>
  678 len=200
  679 nn=1:200;
  682 a1=2.0*nn/len;
  683 plot(nn,a1)
</pre>
<img width="560" alt="image" src="https://github.com/user-attachments/assets/4d8cdc11-5ac9-48d7-a6c6-85bd937af8f6">
<pre>
  685 a2=0.5*sin(2.0*pi*20*nn/len);
  686 plot(nn,a2)
</pre>
<img width="560" alt="image" src="https://github.com/user-attachments/assets/f9200f60-8abc-4010-bbff-c31fd8abfed6">
<pre>
  687 c=a1+a2;
  688 plot(nn,c)
</pre>
<img width="560" alt="image" src="https://github.com/user-attachments/assets/4f0cf222-fd34-4ccb-a3f9-f54e6915557a">

## decomposition of curve by singular spectral analysis

<pre>
  698 m=size(c)(2)
  699 help floor
  701 n=floor(m/2)
  734 for j=1:n;for i=1:m-n+1;x(i,j)=c(i+j-1);endfor;endfor;
  [u s v]=svd(x);
</pre>
### mathematica code
<pre>
  sn[xx_] := Module[{i, j, k, n, n1, x, sum}, x = {};
  {n1, n} = Dimensions[xx];
  j = 0; sum = 0;
  Do[Do[If[k <= n, sum = sum + xx[[i - k + 1, k]]; j = j + 1], {k, i}];
   x = Append[x, sum/j]; sum = 0; j = 0, {i, n1}];
  j = 0; sum = 0;
       Do[
   Do[If[k <= n1, sum = sum + xx[[n1 - k + 1, k + i - 1]]; 
     j = j + 1], {k, n - i + 1}];
   x = Append[x, sum/j]; sum = 0; j = 0, {i, 2, n}];
  Return[x]]
</pre>
