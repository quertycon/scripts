#!/bin/bash

ACTION=$1
COMMAND=$2
RESPONSE=$(echo -e "No\nYes" | dmenu -i -p "Are you sure you want to $ACTION")

if [ $RESPONSE == "Yes" ]
then
  $COMMAND
fi
