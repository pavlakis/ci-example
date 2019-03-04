#!/usr/bin/env sh

docker-compose up -d
docker-compose exec -T my-app-db ci/scripts/load-schema.sh
docker-compose exec -T my-app-web ci/scripts/run-migrations.sh

# Running this will override the returned error code and will instead the result from the below command
#docker-compose down
