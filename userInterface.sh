#!/bin/bash

pause()
{
	echo -n "Press enter to continue..."
	read temp
}

while true ; do
	clear
	echo 'Welcome to our contact database, please select one of the following menu options:'
	echo '(a) Find a record'
	echo '(b) Add a new record'
	echo '(c) Update a record'
	echo '(d) Remove a record'
	echo '(e) Display all records'
	echo '(f) Quit'
	echo -n '> Selection is : '

	read input

	case $input in
		[Aa]* )	clear
				./findrecord.sh
				pause;; 

		[Bb]* )	clear
				./adduser.sh
				echo "New record has been added to the database."
				pause;;

		[Cc]* )	clear
				./update.sh
				;;

		[Dd]* )	clear
				./removeRecord.sh
				echo "Record has been removed from the database."
				pause;;

		[Ee]* )	clear
				./display.sh
				pause;;

		[Ff]* )	clear
				echo "Good Bye!"
				sleep 1
				clear
				exit 0;;

		* 	  )	clear
				echo "Incorrect input!"
		    	sleep 2;;
	esac
done
