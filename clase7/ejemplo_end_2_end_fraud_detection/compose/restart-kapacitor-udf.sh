rm -rf /tmp/comm
mkdir /tmp/comm
docker-compose restart kapacitor_udf
docker-compose logs -f kapacitor_udf