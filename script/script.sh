#!/bin/bash

echo "$AWS_ECR, $APP, $AWS_REGION, $WORK_DIR"
ls
echo "$GITHUB_WORKSPACE"
ls $GITHUB_WORKSPACE/$WORK_DIR

echo "${{ steps.vars.outputs.version }}"