#!/bin/bash

docker stop demo_piangles

docker image build -t demo_piangles .

docker container run -p 5432:5432 --rm -it --name demo_piangles demo_piangles 

sleep 5

docker ps