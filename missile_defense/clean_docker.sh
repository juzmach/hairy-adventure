#!/bin/bash

echo "Stopping all containers..."
docker stop $(docker ps -a -q)
echo "Removing all containers..."
docker rm $(docker ps -a -q)
echo "Removing all images..."
docker rmi $(docker images -q)