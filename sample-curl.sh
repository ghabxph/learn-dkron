#!/bin/bash

echo "The important thing here that makes cron execute once per node is the tag."

curl localhost:${1}/v1/jobs -XPOST -d '{
  "name": "trabaho-natin",
  "schedule": "@every 1s",
  "timezone": "Asia/Manila",
  "executor": "http",
  "concurrency": "forbid",
  "tags": {
    "my_role": "executor:1"
  },
  "executor_config": {
      "method": "GET",
      "url": "https://ghabxph.info",
      "headers": "[]",
      "body": "",
      "timeout": "30",
      "expectCode": "200",
      "expectBody": "",
      "debug": "true"
  }
}'
