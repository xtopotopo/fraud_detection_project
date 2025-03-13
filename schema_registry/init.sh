#!/bin/bash

SCHEMA_REGISTRY_URL="${SCHEMA_REGISTRY_URL:-http://localhost:8081}"

until curl --output /dev/null --silent --head --fail "$SCHEMA_REGISTRY_URL/subjects"; do
  echo "Schema Registry is not available yet at $SCHEMA_REGISTRY_URL. Retrying..."
  sleep 5
done

for schema_file in /app/schemas/*.avsc
do
  if [[ -f "$schema_file" ]]
  then
    SUBJECT_NAME=$(basename "$schema_file" .avsc)
    echo "Registering schema: $SUBJECT_NAME"

    SCHEMA_CONTENT=$(jq -Rs '.' < "$schema_file")

    curl -X POST -H "Content-Type: application/vnd.schemaregistry.v1+json" \
         --data "{\"schema\": $SCHEMA_CONTENT}" \
         "$SCHEMA_REGISTRY_URL/subjects/$SUBJECT_NAME/versions"

    echo "Schema $SUBJECT_NAME registered."
  else
    echo "No schema files found in /app/schemas."
  fi
done

echo "All schemas registered successfully!"
