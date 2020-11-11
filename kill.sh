#!/bin/bash

if [[ -z "${1}" ]]
then
    echo "Parameter is required (enter a pattern)"
    exit
fi
docker kill $(docker-compose ps | grep $1 | awk '{ print $1 }')
