#!/bin/bash
./initMode.sh
a=0
for((i=0;i<10;))
do
    read=$(gpio read 5)
    if [ "$read" == 0 ]
    then
        ((a++))
	./waitForButtonPress.sh
        ./setbits.sh "$a"


        if [ "$a" == 16 ]
        then
            gpio write 4 1 
            sleep 1
            gpio write 4 0  
	break
        fi
    fi
done
