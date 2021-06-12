# Servicio de modelo de ML en Sklearn usando Flask

## Instrucciones

Construcción de imagen

~~~bash
docker build -t ml-fraud-detection-service .
~~~

Ejecución

~~~bash
docker run -p 5000:5000 --mount type=bind,source="$(pwd)/../../models",target=/models ml-fraud-detection-service
~~~

Consumo de API