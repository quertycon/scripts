#!/bin/bash

FILES=$1
DEPTH=$2
FOLDERS=''

for ((i=0;i<DEPTH;i++)); do
  cd ..
done

for FILE in $(printf "%s\n" *)
do
  if [ -d $FILE ]
  then
    FOLDERS+=$FILE
    FOLDERS+='\n'
  fi
done

FOLDER=$(echo -e $FOLDERS | dmenu -i -p 'Move to?')

if [ -d $FOLDER ]
then
  mv $FILES $FOLDER
fi