# Singular-Spectrum-Analysis-by-GNU-Octave
Singular_Spectrum_Analysis-by-GNU Octave

<pre>
  678 len=200
  679 nn=1:200;
  680 a1=sin(2.0*nn/len);
  681 plot(nn,a1)
  682 a1=2.0*nn/len;
  683 plot(nn,a1)
</pre>
<img width="560" alt="image" src="https://github.com/user-attachments/assets/4d8cdc11-5ac9-48d7-a6c6-85bd937af8f6">
<pre>
  684 a2=0.5*Sin(2.0*pi*20*nn/len)
  685 a2=0.5*sin(2.0*pi*20*nn/len);
  686 plot(nn,a2)
  687 c=a1+a2;
  688 plot(nn,c)
</pre>
