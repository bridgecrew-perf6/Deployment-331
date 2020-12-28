#!/bin/bash

cd ../Datastore

git fetch --all;git reset --hard origin/master; git status

cat ./Postgres/DDL/{001..999}-*.sql > ./Postgres/init.sql 2> /dev/null

cat ./Postgres/DML/*.sql >> ./Postgres/init.sql 

git status

userinput=""
echo "Press ESC key to quit"
# read a single character
while read -r -n1 key
do
# if input == ESC key
if [[ $key == $'\e' ]];
then
exit 0
else
break;
fi
# Add the key to the variable which is pressed by the user.
userinput+=$key
done
printf "\nYou have typed : $userinput\n"

git add .

git commit -m "Title" -m "Description...Regenerating init.sql"

git push origin master