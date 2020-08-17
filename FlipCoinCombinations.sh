#!/bin/bash -x

declare -A singletDictionary

heads=0
tails=0

for ((counter=0; counter<20; counter++))
do
        ranCheck=$((RANDOM % 2))
        if [ $ranCheck -eq 1 ]
        then
                ((heads++))
        else
                ((tails++))
        fi
done

singletDictionary[Head]=$heads
singletDictionary[Tail]=$tails

for i in ${!singletDictionary[@]}
do
        percentResult=$((${singletDictionary[$i]} * 100 / 20))
        echo $i" percentage: "$percentResult
done
