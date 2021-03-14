#!/bin/bash

FILE=$1
LIMIT=1024
SIZE=$(stat -c%s "$FILE")

if (($SIZE <= $LIMIT))
then
	echo 'OK'
elif (($SIZE > $LIMIT))
then
	echo 'FAIL'
fi
