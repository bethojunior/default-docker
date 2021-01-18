#!/bin/bash

docker-compose up -d
docker-compose exec -d app php artisan queue:work
docker-compose exec -d app php artisan horizon
