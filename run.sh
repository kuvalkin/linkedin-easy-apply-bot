#!/bin/sh

export LI_EAB_NOW=$(date --rfc-3339=s)

docker compose up -d --build
docker compose exec -it bot /bin/bash -c "python main.py"
docker compose down