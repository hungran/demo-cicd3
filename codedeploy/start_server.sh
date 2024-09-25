#!/bin/bash
# source /home/ec2-user/web/.env

aws ecr get-login-password --region ap-southeast-1 | docker login --username AWS --password-stdin 010352592457.dkr.ecr.ap-southeast-1.amazonaws.com

cd /home/ec2-user/web/ && /usr/local/bin/docker-compose -f docker-compose.yml up -d
