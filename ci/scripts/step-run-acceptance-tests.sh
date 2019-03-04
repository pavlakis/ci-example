#!/usr/bin/env sh

docker-compose up -d
# For this simple PHP application we don't need the DB and we can run the tests by only loading the 'web' service
#docker-compose -f docker-web.yml up -d
docker-compose exec -T my-app-web ci/scripts/run-acceptance-tests.sh $1

