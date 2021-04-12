#!/bin/bash
docker build . -t client-image
docker run --name=client-cont client-image

