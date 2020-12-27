#!/bin/bash

docker stop tp_postgres

docker image build -t tp_postgres .

docker container run -p 5432:5432 -d --rm -it --name tp_postgres tp_postgres 

sleep 5

docker ps