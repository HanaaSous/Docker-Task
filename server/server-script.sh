#!/bin/bash
docker build . -t server-image
docker run -d -it -p 8899:80 --name=server-cont server-image
