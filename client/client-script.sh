#!/bin/bash
chmod o+x validation.sh
docker build . -t client-image
docker run --name=client-cont client-image

