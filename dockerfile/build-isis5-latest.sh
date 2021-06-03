#!/bin/bash

IMAGE_NAME='my_isis5:latest'

docker build -t "$IMAGE_NAME" \
	--build-arg ISIS_VERSION='5' \
	--build-arg BASE_IMAGE='ubuntu:20.04' \
	-f Dockerfile .

[ $? ] && echo "Image '$IMAGE_NAME' created" || echo "Something FAILED"

