% X: vector aleatorio desordenado% p: percentil de recorte function media_recortada_out =  mediaRecortada(X, p)% defino el tamanio del vector de entradaN = length(X);% ordeno el vector de muestrasX_ordenado = sort(X);% me quedo con el vector que esta entre (p, 1-p) de probabilidadX_recortado  = X_ordenado(round(p*N):round((1-p)*N));media_recortada_out = mean(X_recortado);endfunction