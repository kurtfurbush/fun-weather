#!/bin/bash
echo "Building images"
(cd ./api && docker build . -t fun-weather-api:latest)
(cd ./ui && docker build . -t fun-weather-ui:latest)

echo "Launching"
(docker-compose up -d)

echo "Docker brought up successfully"