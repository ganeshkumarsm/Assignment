#!/bin/bash

set -ex
docker-compose up --scale app=3 -d

