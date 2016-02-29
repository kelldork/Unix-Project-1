#!/bin/bash
DBFILE="contactlist.txt"

findRecord() {
  echo "Enter a first OR last name to"
  echo "search (use proper capitalization):"
  read KEY
  
  if grep -q $KEY $DBFILE; then
    echo " "
    echo "Records containing '$KEY':"
    echo -e "$(grep $KEY $DBFILE | tr ":" " ")\n"
  else
    echo "No records containing '$KEY'."
    exit 0
  fi
}
findRecord
