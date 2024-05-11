#!/bin/bash

echo "$AWS_ECR, $APP, $AWS_REGION, $WORK_DIR"
ls
echo "$GITHUB_WORKSPACE"
ls $GITHUB_WORKSPACE/$WORK_DIR

IMAGE=$AWS_ECR/$app
aws ecr get-login-password --region $AWS_REGION | docker login --username AWS --password-stdin $AWS_ECR
docker build -t $IMAGE:1.0.$VERSION -f ./apps/$app/Dockerfile .
docker push $IMAGE:1.0.$VERSION