#!/bin/sh

#Sorts all files in the current directory according to the number of lines in ascending order.
for f in *
   do 
      if [ ! -f "$f" ] # f-flag determines if the file exists
      then
      	exit 1
      fi
      result=`wc -l $f | cut -d' ' -f1` #Counts the number of lines and store the value in result 
      if [ "$result" -lt 10 ]
         then 
            echo "File name : $f"
      elif [ "$result" -lt 100 ] 
         then 
            echo "File name : $f"
      else 
         echo "File name : $f"
      fi            
done
