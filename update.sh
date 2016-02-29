#!/bin/bash

ContactFields()
{
	echo "1: First Name"; echo
	echo "2: Last Name"; echo
	echo "3: Street Address"; echo
	echo "4: Zip Code"; echo
	echo "5: Home Phone"; echo
	echo "6: Work Phone"; echo
	echo "7: Email"; echo
	echo "8: Age"; echo
}

# Prompt for which contact to change
# Currently doesn't work if number entered is greater than number of contacts
while true; do
	bash display.sh
    read -p "Enter number of contact to update: " contact
    case $contact in
		[[:digit:]] ) break;;
        * ) bash display.sh; echo "Invalid; Please enter a number: ";;
	esac
done

ContactFields

# Prompt for which field to change
while true; do
	read -p "Enter field to update: " field
	case $field in
		[1-8] ) break;;
		* ) echo "Invalid; Please enter a number: "; ContactFields;;
	esac
done

# Prompt for new information
echo "Enter new info (must not contain colon): "
while true; do
	read -p "Enter new info (must not contain colon): " info
	case $info in
		) break;;
		* ) echo "Invalid, contained colon. Please enter new info: ";;
	esac
done

exit 0
