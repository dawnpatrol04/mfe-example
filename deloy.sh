#!/bin/sh

# Remove caches
yes | docker system prune

# Stop previous dockers
docker-compose stop
docker-compose down


# Run dockers as daemon
docker-compose up -d --build
docker-compose start

# Remove caches
yes | docker system prune