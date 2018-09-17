function t=MatCompute(seq,str)
       N=length(seq);    //Taking length of input sequence
       X=[]               //creating blank list
       for i=1:1:N  
          X(i)=0;         //initiating ith index of X with 0
          for j=1:1:N
              X(i)=[X(i)+seq(j)*TwiddleFactor(N,j-1,i-1,str)];       //taking summation of twiddle factor with jth index of input sequence
           end
           X(i)=X(i)                                       //asssignment final value to that paticular index
       end
       t=X;                                                  //rerturning the value
endfunction

