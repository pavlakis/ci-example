#!/usr/bin/env sh

docker-compose up -d
docker-compose exec -T my-app-web ci/scripts/run-acceptance-tests.sh $1
docker-compose down

