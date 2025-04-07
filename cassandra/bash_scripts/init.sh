#!/bin/bash

until cqlsh cassandra 9042 -e "describe cluster"; do
    echo "En attente de la connexion à Cassandra..."
    sleep 5
done

cqlsh cassandra 9042 -f /app/cql_scripts/init-db.cql
