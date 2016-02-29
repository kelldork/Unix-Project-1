#!/bin/bash

DBFILE="contactlist.txt"

display()
{
   #Put everything except the first line in the dbContents variable
   dbContents=$( tail -n +2 $DBFILE )
   #Remove all : and replace them with spaces
   dbContentsNoColon=${dbContents//:/ }
   IFS=$'\n'
   num=0
   for line in $dbContentsNoColon
      do 
         IFS=' '
         count=0
         num=$((num+1))
         for word in $line
            do
            count=$((count+1))
            name+=" ${word}"
            if [ "$count" -eq 2 ]
            then
              echo $num. $name
              break #Done printing first and last name
            fi
            done
         name=""
         IFS=$'\n' 
      done
}
display
