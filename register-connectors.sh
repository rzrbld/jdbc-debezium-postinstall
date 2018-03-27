#!/bin/bash
echo "REGISTER SOURCE" && \
curl -i -X POST -H "Accept:application/json" -H  "Content-Type:application/json" http://localhost:8083/connectors/ -d @sink-source-postgres.json 
sleep 10 && \
echo "REGISTER TARGET" && \
curl -i -X POST -H "Accept:application/json" -H  "Content-Type:application/json" http://localhost:8083/connectors/ -d @sink-target-sqlite.json
echo "REGISTER DONE"
