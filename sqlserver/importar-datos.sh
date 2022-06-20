#!/bin/bash

for i in {1..50};
do
    /opt/mssql-tools/bin/sqlcmd -S localhost -U sa -P Your_password123 -d master -i script_maestro.sql
    if [ $? -eq 0 ]
    then
        echo "script_maestro.sql ejecutado"
        break
    else
        echo "sql server no listo"
        sleep 5
    fi
done