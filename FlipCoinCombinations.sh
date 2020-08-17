#!/bin/bash -x

declare -A doubletDictionary
declare -a percentArr

hh=0
ht=0
th=0
tt=0

for ((counter=0; counter<20; counter++))
do
        ranCheck=$((RANDOM % 4))
        if [ $ranCheck -eq 0 ]
        then
                ((hh++))
        elif [ $ranCheck -eq 1 ]
        then
                ((ht++))
        elif [ $ranCheck -eq 2 ]
        then
                ((th++))
        elif [ $ranCheck -eq 3 ]
        then
                ((tt++))
        fi
done

doubletDictionary[HH]=$hh
doubletDictionary[HT]=$ht
doubletDictionary[TH]=$th
doubletDictionary[TT]=$tt


for i in ${!doubletDictionary[@]}
do
        percentArr[$i]=$(( ${doubletDictionary[$i]} * 100 / 20 ))
        echo $i "percentage = "${percentArr[@]}
done


