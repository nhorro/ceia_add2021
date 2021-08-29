# Kapacitor Custom UDF (WIP)

Servicio que implementa una función UDF de Kapacitor en Python para realizar una predicción o clasificación sobre una variable.
Basada en ejemplo:
- https://github.com/influxdata/kapacitor/blob/master/udf/agent/examples/mirror/mirror.py
- https://docs.influxdata.com/kapacitor/v1.5/guides/socket_udf/

Para la comunicación con Kapacitor se utiliza el socket: "/tmp/comm/udf_ml_model.sock"
Si se usa en docker-compose, montar en Kapacitor y este container:

~~~
    volumes:
      - type: bind
        source: "/tmp/comm/udf_ml_model.sock"
        target: "/tmp/comm/udf_ml_model.sock" 
~~~

## Instrucciones

Configuración de kapacitor.conf (cambiar nombre de socket si se modifica):

~~~
[udf]
[udf.functions]
    [udf.functions.udf_ml_model]
        socket = "/tmp/comm/udf_ml_model.sock"
        timeout = "10s"
~~~

Para probar, se puede usar el siguiente TICKScript.
Se suscribe a la variable TMV_VAR0 y devuelve agrega los campos con la predicción de aplicar el modelo de ML.

~~~
stream
    |from()
        .measurement('TMV_VAR0')
    @udf_ml_model()
	|influxDBOut()
		.database('my_application')
		.measurement('TMV_VAR_PREDICTED')
~~~
