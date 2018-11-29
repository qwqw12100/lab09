#!/bin/bash
./initMode.sh
while [ $(gpio read 5) == 1 ]
do
	echo 1
	sleep 0.25
done

while [ $(gpio read 5) == 0 ]
  do
        echo 0
	sleep 0.25 		
 done 
