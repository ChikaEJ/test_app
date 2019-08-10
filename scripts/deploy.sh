#!/bin/bash

set -e


TAG=${BUILD_NUMBER} docker-compose build
TAG=${BUILD_NUMBER} docker-compose push

eval $(docker-machine env test_app)

TAG=${BUILD_NUMBER} docker-compose pull
TAG=${BUILD_NUMBER} docker-compose up -d
TAG=${BUILD_NUMBER} docker-compose exec web-app rake db:migrate

