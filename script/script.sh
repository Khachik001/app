#!/bin/bash

echo "$AWS_ECR, $APP, $AWS_REGION, $WORK_DIR"
ls
echo "$GITHUB_WORKSPACE"


IMAGE="$AWS_ECR/$APP"

echo $IMAGE

aws ecr get-login-password --region $AWS_REGION | docker login --username AWS --password-stdin $AWS_ECR
docker build -t $IMAGE:$VERSION -f $GITHUB_WORKSPACE/apps/$APP/Dockerfile .
docker push $IMAGE:$VERSION