pkg load statisticsrand ("seed", 1234)% numero de muestrasN = 10000;% vector aleatorio normal N(1,1)X = 1+randn(N,1);% defino el parametro lambdalambda = 1;% genero las muestras exponenciales de parametro lambdaY = exprnd(lambda, N,1);boxplot({X,Y})axis ([0,3]);set(gca (), "xtick", [1 2], "xticklabel", {"normal", "exponencial"})