#!/bin/bash
/go/src/app/mazetest /mnt/testMap1.json 2 "Knife,Potted Plant" > /mnt/outputTest1Map1

FILE1="/mnt/outputTest1Map1"
FILE2="/mnt/controlTest1Map1"

if cmp --silent -- "$FILE1" "$FILE2"; then
    echo "Test 1 passed"
else
    echo "Test 1 failed"
fi


/go/src/app/mazetest /mnt/testMap2.json 4 "Knife,Potted Plant,Pillow" > /mnt/outputTest2Map2

FILE1="/mnt/outputTest2Map2"
FILE2="/mnt/controlTest2Map2"

if cmp --silent -- "$FILE1" "$FILE2"; then
    echo "Test 2 passed"
else
    echo "Test 2 failed"
fi