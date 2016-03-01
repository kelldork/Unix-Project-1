#!/bin/bash

# Print contacts
bash display.sh

# Delete current contact
echo -n 'Enter the number of the record that you want to update.'

read contact 
while [[ ! $contact =~ ^[0-9]+$ ]]; do
	echo 'Incorrect input please enter an integer value'
	read contact 
done

contact=$(expr $contact + 1)
sed -i "$contact d" contactlist.txt


# Add new user
echo "Please enter new information: "
bash adduser.sh

exit 0
