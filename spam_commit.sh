#!/bin/bash

WORDS=("alpha" "beta" "gamma" "delta" "quest" "node" "zk" "layer2" "rollup" "base" "update" "fix" "test" "build")

for i in {1..100}
do
  RAND1=${WORDS[$RANDOM % ${#WORDS[@]}]}
  RAND2=${WORDS[$RANDOM % ${#WORDS[@]}]}
  RAND3=$(date +%s%N)

  echo "$RAND1 $RAND2 $RAND3 line $i" >> data_$i.txt

  git add .
  git commit -m "update $RAND1 $RAND2 #$i"
done

