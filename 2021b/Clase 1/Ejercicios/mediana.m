function mediana_out = mediana(X)%  longitud del vector de entradaN = length(X);% ordenar ascendenteX_ordenado = sort(X);% pregunto si N es par o impar% es imparif(mod(N,2)==1)  mediana_out = X_ordenado((N+1)/2);  % es par  else   mediana_out = (1/2)*(X_ordenado(N/2) + X_ordenado(N/2 + 1));    end  
endfunction
