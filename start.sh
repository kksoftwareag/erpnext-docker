#!/bin/bash
docker-compose -f docker-compose.yml build --force-rm --compress --no-cache
docker-compose -f docker-compose.yml pull
docker-compose -f docker-compose.yml up