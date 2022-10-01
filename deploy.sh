#!/bin/bash

source /root/.bashrc

/app/script.exp $2

#echo "ls -la ../"
#ls -la ../
#echo "ls -la ../home"
#ls -la ../home
#echo "ls -la ../workflow"
#ls -la ../workflow
#echo "pwd ."
#pwd .
#echo "ls -la /app"
#ls -la /app
#echo "ls -la ."
#ls -la .
# Need to sleep to allow for script above to complete with input
sleep 5

echo "b4a default $1"
b4a default "$1"
echo "b4a deploy"
b4a deploy
