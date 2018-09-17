function [X1K,X2K]=DFT(seq1, seq2)
   //calculating length of sequences of zero padding if sequences are not equal
        len1=length(seq1)
        len2=length(seq2)
        s1=[];
        s2=[];
       
        if  len1==len2 then
            //if sequence are of equal length it will enter this if loop
           // disp("Equal length sequence"); 
            s1=MatCompute(seq1,"dft");//calling Matcompute function 
            s2=MatCompute(seq2,"dft");
           X1K=s1;
           X2K=s2;

     else
         // sequences are not equal then it will wnter this else loop
              if len1>len2 then      // if sequence 1 is > sequence 2
                  seq2=[seq2,zeros(1,len1-len2)];      //zero padding

              else                   // if sequence 1 is > sequence 2
                  seq1=[seq1,zeros(1,len2-len1)];     // zero padding
              end 
         // after  sequences are equal then it  it will followthe below steps
              s1=MatCompute(seq1,"dft");
              s2=MatCompute(seq2,"dft");
              X1K=s1;
              X2K=s2;
         end

endfunction
