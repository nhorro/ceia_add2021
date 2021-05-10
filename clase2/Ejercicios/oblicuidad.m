function oblicuidad_out = oblicuidad(X)    % longitud del vector  N = length(X);    % media muestral  mu_hat = mean(X);    % desvio estandar muestral  s = std(X);   oblicuidad_out =0;    % calculo el tercer momento  for i=1:N  oblicuidad_out = oblicuidad_out + (1/N)*((X(i)-mu_hat)/s)^3;  end  
endfunction
