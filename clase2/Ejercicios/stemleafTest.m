pkg load statisticsrand ("seed", 1234)% numero de muestrasN = 100;% vector aleatorio normal N(1,1)X = 1+randn(N,1);% escalamos X porque el steamleaf solo acepta enterosX_escalado = 10*X;stemleaf(X_escalado,"V.A. Normal")