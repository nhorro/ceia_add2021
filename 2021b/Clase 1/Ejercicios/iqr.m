function iqr_out = iqr(X)n = length(X);X_ord = sort(X);  iqr_out = X_ord(round(0.75*n)) - X_ord(round(0.25*n));  
endfunction
