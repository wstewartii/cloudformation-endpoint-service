#!/bin/bash


if [[ -z "$AWS_REGION" ]]; then
export AWS_REGION="us-west-2"
fi

if [[ -z "$AWS_PROFILE" ]] ;then
export AWS_PROFILE="dev_owner"
fi

aws cloudformation deploy --template-file template.yaml --stack-name ${1} --parameter-overrides file://params/${1}.json
