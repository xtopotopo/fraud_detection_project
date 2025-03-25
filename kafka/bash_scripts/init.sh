#!/bin/bash

kafka-topics --create \
  --bootstrap-server kafka:9092 \
  --replication-factor  1\
  --partitions 1\
  --topic raw_credit_data \
  --config retention.ms=600000

kafka-topics --create \
  --bootstrap-server kafka:9092 \
  --replication-factor  1\
  --partitions 1\
  --topic raw_insurance_data \
  --config retention.ms=600000

kafka-topics --create \
  --bootstrap-server kafka:9092 \
  --replication-factor  1\
  --partitions 1\
  --topic fraud_prediction \
  --config retention.ms=600000