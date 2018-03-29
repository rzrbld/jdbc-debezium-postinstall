#!/bin/bash
echo "REGISTER postgres SOURCE" && \
echo "  " && \
curl -i -X POST -H "Accept:application/json" -H  "Content-Type:application/json" http://localhost:8083/connectors/ -d @/tmp/postinstall/jdbc-debezium-postinstall-master/sink-source-postgres.json 
sleep 5 && \
echo "  " && \
echo "REGISTER TARGET sqlite" && \
echo "  " && \
curl -i -X POST -H "Accept:application/json" -H  "Content-Type:application/json" http://localhost:8083/connectors/ -d @/tmp/postinstall/jdbc-debezium-postinstall-master/sink-target-sqlite.json
echo "  " && \
# uncomment if you have an oracle db, but first - you need to change db host, user and password at /tmp/postinstall/jdbc-debezium-postinstall-master/sink-target-oracle.json file
#echo "REGISTER TARGET oracle" && \
#echo "  " && \
#curl -i -X POST -H "Accept:application/json" -H  "Content-Type:application/json" http://localhost:8083/connectors/ -d @/tmp/postinstall/jdbc-debezium-postinstall-master/sink-target-oracle.json
#echo "  " && \
echo "REGISTER DONE"

