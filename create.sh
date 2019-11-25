#!/bin/bash

echo "First Arg, stackname: $1"
echo "Second Arg, template: $2"
echo "Third Arg, parameters file: $3"

if [ "$#" != "3" ]
then
  echo "Script needs 3 arguments"
  echo "Format: ./create <stack-name> <template-body> <parameters-file>"
  exit 1
else
  echo "CloudFormation"
  aws cloudformation create-stack --stack-name $1 --template-body=$2 --parameters=$3 --region=us-west-2 --capabilities CAPBILITY_NAMED_IAM
fi




