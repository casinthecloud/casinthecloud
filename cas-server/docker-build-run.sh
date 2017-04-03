#!/bin/bash

docker build -t cas-server .
docker run -it --rm -p 8080:8080 --name cas-server cas-server
