#!/usr/bin/env sh

docker-compose up -d
docker-compose exec -T my-app-web ci/scripts/run-smoke-tests.sh
docker-compose down

