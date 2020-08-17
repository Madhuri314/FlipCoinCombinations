#!/bin/bash

declare -A tripletDictionary
declare -a percentArr

hhh=0
hht=0
hth=0
htt=0
thh=0
tht=0
tth=0
ttt=0

for ((counter=0; counter<20; counter++))
do
        ranCheck=$((RANDOM % 8))
        if [ $ranCheck -eq 0 ]
        then
                ((hhh++))
        elif [ $ranCheck -eq 1 ]
        then
                ((hht++))
        elif [ $ranCheck -eq 2 ]
        then
                ((hth++))
        elif [ $ranCheck -eq 3 ]
        then
                ((htt++))
        elif [ $ranCheck -eq 4 ]
        then
                ((thh++))
        elif [ $ranCheck -eq 5 ]
        then
                ((tht++))
        elif [ $ranCheck -eq 6 ]
        then
                ((tth++))
        elif [ $ranCheck -eq 7 ]
        then
                ((ttt++))
        fi
done

tripletDictionary[HHH]=$hhh
tripletDictionary[HHT]=$hht
tripletDictionary[HTH]=$hth
tripletDictionary[HTT]=$htt
tripletDictionary[THH]=$thh
tripletDictionary[THT]=$tht
tripletDictionary[TTH]=$tth
tripletDictionary[TTT]=$ttt

for i in ${!tripletDictionary[@]}
do
        percentArr[$i]=$(( ${tripletDictionary[$i]} * 100 / 20 ))
        echo $i "percentage " ${percentArr[@]}
done
