#!/bin/bash
docker build . -t server-image
docker run -p 8899:80 --name=server-cont server-image
