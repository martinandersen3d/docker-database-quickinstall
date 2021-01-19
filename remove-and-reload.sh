#!/bin/bash

sudo docker-compose down && sudo docker-compose up -d --remove-orphans && sudo docker-compose start && sleep 2 && sudo docker-compose ps