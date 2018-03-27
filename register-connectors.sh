#!/bin/bash
echo "REGISTER SOURCE" && \
curl -i -X POST -H "Accept:application/json" -H  "Content-Type:application/json" http://localhost:8083/connectors/ -d @/tmp/postinstall/jdbc-debezium-postinstall-master/sink-source-postgres.json 
sleep 10 && \
echo "REGISTER TARGET" && \
curl -i -X POST -H "Accept:application/json" -H  "Content-Type:application/json" http://localhost:8083/connectors/ -d @/tmp/postinstall/jdbc-debezium-postinstall-master/sink-target-sqlite.json
echo "REGISTER DONE"
