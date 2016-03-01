#!/bin/bash

./display.sh

while true; do
   	read -p 'Enter the number of the record that you want to remove > ' contact
	
	case $contact in
		[[:digit:]] ) break;;
		* ) echo "Invalid input!"
	esac
done

contact=$(expr $contact + 1)
sed -i "$contact d" contactlist.txt
