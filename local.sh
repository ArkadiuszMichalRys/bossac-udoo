#!/usr/bin/env bash

docker-compose -f local.yml build
docker-compose -f local.yml up
