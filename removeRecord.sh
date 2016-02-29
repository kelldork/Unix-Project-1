#!/bin/bash

removeRecord()
{
	bash display.sh

	echo -n 'Enter the number to the corresponding record that you want to remove.'
	
	read number
	while [[ ! $number =~ ^[0-9]+$ ]]; do
    	echo 'Incorrect input please enter an integer value'
		read number
	done

	number=$(expr $number + 1)
	sed -i "/$number/d" contactlist.txt
}

removeRecord
