#!/bin/bash
echo "REGISTER SOURCE" && \
sleep 20 &&\
curl -i -X POST -H "Accept:application/json" -H  "Content-Type:application/json" http://localhost:8083/connectors/ -d @/tmp/postinstall/jdbc-debezium-postinstall-master/sink-source-postgres.json 
sleep 20 && \
echo "REGISTER TARGET" && \
curl -i -X POST -H "Accept:application/json" -H  "Content-Type:application/json" http://localhost:8083/connectors/ -d @/tmp/postinstall/jdbc-debezium-postinstall-master/sink-target-sqlite.json
echo "REGISTER DONE"
