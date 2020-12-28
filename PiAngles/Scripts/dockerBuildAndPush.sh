#!/bin/bash

docker rm $(docker ps -a -f status=exited -q); docker rmi $(docker images -a -q)

cd ../Services/

docker-compose build

#docker images | grep pianglesorg | sed 's/|/ /' | awk '{print $1, $3}'
docker images | grep pianglesorg | sed 's/|/ /' | while read -r line ; do
	CMD=`echo $line | awk '{print "docker tag " $3 " "  $1"; docker push "$1}'`
	eval $CMD
done
