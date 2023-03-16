#!/bin/bash

# shell script will fail if there is any error
set -eu

#codebuild will use this file to push image in docker hub


# retag docker image 
docker tag techmax 353182159803.dkr.ecr.us-east-1.amazonaws.com/techmax

# Login to docker
docker login -u AWS -p $(aws ecr get-login-password --region us-east-1) 353182159803.dkr.ecr.us-east-1.amazonaws.com

# login to ecr
aws ecr get-login-password | docker login --username AWS --password-stdin 353182159803.dkr.ecr.us-east-1.amazonaws.com

# push docker image to ecr repository 
docker push 353182159803.dkr.ecr.us-east-1.amazonaws.com/techmax
