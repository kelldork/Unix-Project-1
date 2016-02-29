#!/bin/bash

DBFILE="contactlist.txt"

display()
{
   #Put everything except the first line in the dbContents variable
   dbContents=$( tail -n +2 $DBFILE )
   #Remove all : and replace them with spaces
   dbContentsNoColon=${dbContents//:/ }
   IFS=$'\n'
   for line in $dbContentsNoColon
      do 
         IFS=' '
         count=0
         for word in $line
            do
            count=$((count+1))
            name+=" ${word}"
            if [ "$count" -eq 2 ]
            then
              echo $name
              break #Done printing first and last name
            fi
            done
         name=""
         IFS=$'\n' 
      done
}
display
