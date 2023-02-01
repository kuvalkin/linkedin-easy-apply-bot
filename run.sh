#!/bin/bash

export LI_EAB_NOW=$(date --rfc-3339=s)

echo 'Starting containers...'
docker compose up -d --build

echo 'Starting the bot...'
if [[ $1 =~ ^[0-9]+$ ]]
then
    docker compose exec -it bot timeout $1 /bin/bash -c "python main.py"
else
    docker compose exec -it bot /bin/bash -c "python main.py"
fi

echo 'Stoping and removing containers...'
docker compose down