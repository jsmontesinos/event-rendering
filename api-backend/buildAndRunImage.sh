#!/bin/bash
docker build -t event-rendering-api:v1 .
docker run -p 18080:8080 -d event-rendering-api:v1