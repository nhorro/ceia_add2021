function [datos_ord_rec , s, mediana_est, rango]= filtroDatos(datos, x_filtro)  % me creo un vector de medias muestrales filtradas por x diash_filtro = (1/x_filtro)*ones(x_filtro,1);% columna 5 es precio de cierredatos = datos(:,5);% la primera columna no contiene datosdatos = datos(2:end);% precios promedio semanalesdatos_filt = filter(h_filtro,1, datos);% elimino las primeras muestras que tienen retraso del filtrodatos_filt = datos_filt(x_filtro:end);% longitud de vector filtradon = length(datos_filt);% ordeno el vector filtradodatos_ord = sort(datos_filt);% Q1Q1 = datos_ord(round(0.25*n)) ;% Q2, medianaQ2 = datos_ord(round(0.5*n));mediana_est = Q2;% Q3Q3 = datos_ord(round(0.75*n)) ;% IQRIQR = Q3-Q1;% pasopaso = 1.5*IQR;% outlier inferioroutlier_inf = Q1 - paso;% outlier superioroutlier_sup= Q3 + paso;% elimino los outliers (atencion que los datos pueden NO tener outliers)datos_ord_rec = datos_ord(datos_ord>outlier_inf & datos_ord<outlier_sup);% numero de puntos recortadosn_rec = length(datos_ord_rec);% calculo el rango, el precio filtrado sigue distribucion approx. normalrango = datos_ord_rec(n_rec) - datos_ord_rec(1);% estimo el desvio estandar muestral de la poblacions = rango / 4; 
endfunction
