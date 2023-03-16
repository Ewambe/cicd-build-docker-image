#!/bin/bash 

#This is the shell script file that codebuild will use to create our docker image
#when building shell script file, always start with the sheben

# shell script will fail if there is any error
set -eu


# build the docker image
docker build -f techmax/Dockerfile -t techmax .