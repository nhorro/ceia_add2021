function entropia_out = entropia(p_matrix)entropia_out = 0;for j=1:size(p_matrix,1) % realizaciones      for i=1:size(p_matrix,2) % p. de valores posibles            entropia_out = entropia_out + p_matrix(i)*log(1/p_matrix(i))/log(2);      end  
end% promedio las entropiasentropia_out = entropia_out/size(p_matrix,1);endfunction
