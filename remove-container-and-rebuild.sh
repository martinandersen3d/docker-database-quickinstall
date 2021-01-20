#!/bin/bash

# docker-compose down:                      Remove the builded container
# docker-compose up -d --remove-orphans     Also remove the builded containers
# docker-compose Start                      Start the containers
# docker-compose ps                         List the status of the containers

sudo docker-compose down && sudo docker-compose up -d --remove-orphans && sudo docker-compose start && sleep 2 && sudo docker-compose ps