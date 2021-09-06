#!/usr/bin/env bash

set -eu

if [ $# != 2 ]; then
  echo "Usage: ./update-version-vode.sh .env.stg 1"
  exit
fi

ENV_FILE=$1
NEW_VERAION_CODE=$2

if [ ! -e $ENV_FILE ]; then
  echo "File not exists."
  exit
fi

ENV_NAME="VERSION_CODE"

echo $ENV_FILE
echo $NEW_VERAION_CODE

sed -i -e "s/\(${ENV_NAME}\)=[0-9]*$/\1=${NEW_VERAION_CODE}/" $ENV_FILE