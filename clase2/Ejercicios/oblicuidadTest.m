pkg load statisticsrand ("seed", 1234)% numero de muestrasN = 10000;% vector aleatorio normal N(1,1)X = 1+randn(N,1);% calculo la oblicuidad de la normaloblicuidad_normal = oblicuidad(X)oblicuidad_normal_teorica = 0% defino el parametro lambdalambda = 1;% genero las muestras exponenciales de parametro lambdaX = exprnd(lambda, N,1);% calculo la oblicuidad de la exponencialoblicuidad_exponencial = oblicuidad(X)oblicuidad_exponencial_teorica = 2