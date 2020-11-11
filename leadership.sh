#!/bin/bash

docker-compose ps | \
    grep '>8080/tcp' | \
    awk '{ print "printf " substr($7, 9, 5) ": && curl localhost:" substr($7, 9, 5) "/v1/isleader && echo"}' | \
    bash
