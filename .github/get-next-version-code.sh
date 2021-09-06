#!/usr/bin/env bash

set -eu

if [ $# != 1 ]; then
  echo "Usage: ./get-next-version-code.sh .env.stg"
  exit
fi

ENV_FILE=$1

if [ ! -e $ENV_FILE ]; then
  echo "File not exists."
  exit
fi

ENV_NAME="VERSION_CODE"

CURRENT_VERSION_CODE=`grep $ENV_NAME $ENV_FILE | sed -e "s/${ENV_NAME}=//"`

echo $((CURRENT_VERSION_CODE+1))