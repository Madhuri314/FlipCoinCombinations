#!/bin/bash -x

ranCheck=$((RANDOM % 2))

if [ $ranCheck -eq 1 ]
then
        echo "Heads"
else
        echo "Tails"
fi

