#!/bin/sh

if [ $1 ]; then
  echo "List of processes running on $1"
  lsof -i :$1
else
  echo "Please specify a port number!"
fi


