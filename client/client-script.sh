#!/bin/bash
docker build . -t client-image
docker run -it --name=client-cont client-image bash

