#!/bin/bash

echo "First Arg: $1"

if [ "$#" != "1" ]
then
  echo "Script needs 1 argument"
  echo "Format: ./destroy <stack-name>"
  exit 1
else
  echo "CloudFormation"
  aws cloudformation delete-stack --stack-name $1
fi




