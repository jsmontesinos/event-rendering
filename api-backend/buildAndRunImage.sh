#!/bin/bash
docker build -t local/event-rendering-api .
docker run -p 18080:8080 -d local/event-rendering-api