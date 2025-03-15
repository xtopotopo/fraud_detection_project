#!/bin/bash

echo "alias producer='kafka-console-producer --bootstrap-server kafka:9092 --topic'" >> ~/.bashrc
echo "alias consumer='kafka-console-consumer --bootstrap-server kafka:9092 --topic'" >> ~/.bashrc
echo "alias list='kafka-topics --bootstrap-server kafka:9092 --list'" >> ~/.bashrc
echo "alias delete='kafka-topics --bootstrap-server kafka:9092 --delete --topic'" >> ~/.bashrc
echo "alias create='kafka-topics --bootstrap-server kafka:9092 --create --topic'" >> ~/.bashrc
echo "alias describe='kafka-topics --bootstrap-server kafka:9092 --describe --topic'" >> ~/.bashrc


source ~/.bashrc