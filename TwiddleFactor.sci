//This function is for  formation of Twiddle Factor of N-point DFT and IDFT
// Specially a string argument is taken "str" which is either "dft" or  "idft"
//the corresponding dft or idft will be calculated from this function
//N->no.of points of dft
//n=0,1,2.....,N-1
//k=0,1,2......,N-1
//str="dft" or "idft"
function w=TwiddleFactor(N,n,k,str)
    if str =="dft" then
        w=cos(2*%pi*n*k/N)-%i*sin(2*%pi*n*k/N);
      
     end
     if str =="idft" then
          w=cos(2*%pi*n*k/N)+%i*sin(2*%pi*n*k/N);
     end
endfunction
