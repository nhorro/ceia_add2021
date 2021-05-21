function divergenciaKL_out = divergenciaKL(p_vector, q_vector)divergenciaKL_out = 0;for i = 1:length(p_vector)      divergenciaKL_out = divergenciaKL_out + p_vector(i)*log(p_vector(i))/log(2) - p_vector(i)*log(q_vector(i))/log(2);end  
endfunction
