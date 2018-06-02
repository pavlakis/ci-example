#!/usr/bin/env sh

composer install --optimize-autoloader --no-scripts --no-interaction

bin/phpunit -c tests/phpunit.xml --testsuite unit --exclude-group integration
