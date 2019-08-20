#!/bin/bash
# $IMAGE_NAME var is injected into the build so the tag is correct.
IMAGE_NAME=chlangdevenv/tensorflow:0.0.0.9999


docker build --build-arg VCS_REF=`git rev-parse HEAD` \
  --build-arg BUILD_DATE=`date -u +%Y-%m-%dT%H:%M:%SZ` \
  -t $IMAGE_NAME .