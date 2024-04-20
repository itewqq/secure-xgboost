#!/bin/bash

set -ex

docker volume create --driver local --opt type=tmpfs --opt device=tmpfs --opt o=rw aesmd-socket
docker-compose up --build