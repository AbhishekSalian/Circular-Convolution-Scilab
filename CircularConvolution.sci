//This methods consists of accepting sequences
//then calculating DFT of two seqeuences
//taking idft of product of two dft's <---Circularly convolved result 
function c=CircularConvolution()
        seq1= input("Enter the sequence1:");         //uesr input.
        seq2 = input("Enter the sequence2:");        //user input
        [X1K,X2K]=DFT(seq1,seq2);
         X3K=X1K.*X2K ;
         disp("The Circular Convolution is:");
         c=real(IDFT(X3K)');
endfunction
