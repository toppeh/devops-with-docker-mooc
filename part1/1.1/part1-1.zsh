#!/bin/zsh

OUTPUT=./1.md

echo "# Part 1" > $OUTPUT
echo "## Exercise 1.1: Getting started" >> $OUTPUT

ID1=$(docker container run -d nginx)
ID2=$(docker container run -d nginx)
ID3=$(docker container run -d nginx)
docker stop $ID2
docker stop $ID3
echo '```' >> $OUTPUT
docker ps -a >> $OUTPUT
echo '```' >> $OUTPUT

docker stop $ID1
docker container prune -f
docker image rm nginx

echo '## Exercise 1.2: Cleanup\nOutput of `docker ps -a`:\n```' >> $OUTPUT
docker ps -a >> $OUTPUT
echo '```\nOutput of `docker images`:\n```' >> $OUTPUT
docker images >> $OUTPUT
echo '```' >> $OUTPUT