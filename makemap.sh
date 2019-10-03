#!/bin/bash

FILES=$1

if [ ! -d temp ]
then
  mkdir temp
fi

mv $FILES temp
