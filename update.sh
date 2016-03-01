#!/bin/bash

# Print contacts
bash display.sh

# Delete current contact
while true; do
	read -p "Enter the number of the record that you wish to update: " contact
	case $contact in
		[[:digit:]] ) break;;
		* ) echo "Invalid input";;
	esac
done

contact=$(expr $contact + 1)
sed -i "$contact d" contactlist.txt


# Add new user
echo "Please enter new information: "
./adduser.sh

exit 0
