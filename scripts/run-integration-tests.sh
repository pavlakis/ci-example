#!/usr/bin/env bash

### For a Symfony project using Doctrine
#bin/console cache:warmup --env=test
#bin/console doctrine:schema:drop --no-interaction --env=test --force
#APP_ENV=test bin/console doctrine:schema:create --no-interaction --env=test
#APP_ENV=test bin/console doctrine:fixtures:load --no-interaction --env=test
#APP_ENV=test vendor/bin/simple-phpunit --group integration

APP_ENV=ci ./bin/phpunit --group integration

