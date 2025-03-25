#!/bin/bash

echo "Attente du démarrage de Cassandra..."
until cqlsh -e "DESCRIBE KEYSPACES"; do
  sleep 5
done

echo "Cassandra est prêt, exécution du script CQL..."
cqlsh -f cql_scripts/init-db.cql

echo "Script exécuté avec succès !"

