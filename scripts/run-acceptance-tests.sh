#!/usr/bin/env sh

composer install --optimize-autoloader --no-scripts --no-interaction
./bin/behat -c tests/behat/behat.yml --suite=$1