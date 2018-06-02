# CI example scripts

Example scripts for running CI pipelines in a Docker-in-Docker environment.

All examples given are for a PHP project.

Scripts for:

* Unit tests
* Integration tests
* Acceptance tests
* Smoke tests


It includes examples on:

* Load DB schema
* Run DB migrations

## Docker in Docker

To run it directly using [Docker-in-Docker](https://hub.docker.com/_/docker/)

```

docker run --privileged --name docker-master-docker -v `pwd`:/var/www/html -d docker:stable-dind
docker exec -it docker-master-docker sh

cd /var/www/html
./ci/scripts/install-docker-compose.sh 
```

## Bitbucket Pipelines

```yml

image: docker:stable

options:
  docker: true


pipelines:
  default:
    - parallel:
        - step:
            name: Unit Tests
            script:
              - ci/scripts/install-docker-compose.sh
              - ci/scripts/step-run-unit-tests.sh
        - step:
            name: Acceptance Tests
            script:
              - ci/scripts/install-docker-compose.sh
              - ci/scripts/step-run-acceptance-tests.sh app
        - step:
            name: Smoke Tests
            script:
              - ci/scripts/install-docker-compose.sh
              - ci/scripts/step-run-smoke-tests.sh


```