#!/usr/bin/env sh

docker-compose up -d
docker-compose exec -T my-app-db ci/scripts/load-schema.sh
docker-compose exec -T my-app-web ci/scripts/run-migrations.sh
docker-compose down
