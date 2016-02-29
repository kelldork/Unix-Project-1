#!/bin/bash

DBFILE="contactlist.txt"
addUser()
{
   echo "Enter a first name"
   checkInput fname
   echo "Enter a last name"
   checkInput lname
   echo "Enter an address"
   checkInput  address
   echo "Enter the zip code"
   checkInput zip
   echo "Enter Home Phone"
   checkInput phone
   echo "Enter Work Phone"
   checkInput phone2
   echo "Enter email"
   checkInput email
   echo "Enter age"
   checkInput age
   echo "$fname:$lname:$address:$zip:$phone:$phone2:$email:$age" >> "$DBFILE"
   ./userInterface.sh
}

checkInput()
{
  local _resultvar=$1
  read var
  if [[ $var == *[:]* ]]
  then
     echo "Your entry contains a colon which is not permited, please try again"
     checkInput var
  fi
  eval $_resultvar="'$var'"
}
addUser
