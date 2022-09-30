#!/bin/bash

source /root/.bashrc

/app/script.exp $2

echo "ls -la ../"
ls -la ../
echo "pwd ."
pwd .
echo "ls -la /app"
ls -la /app
echo "ls -la ."
ls -la .
echo "b4a default $1"
b4a default "$1"
echo "b4a deploy"
b4a deploy
