#!/bin/sh

userInterface()
{
	while true ; do
		clear
		echo 'Welcome to my contact database, please select in the following menu:'
		echo '(a) Find a record'
		echo '(b) Add a new record'
		echo '(c) Update a record'
		echo '(d) Remove a record'
		echo '(e) Quit'
		echo -n '> Selection is : '
		read input
	
		case $input in
			[Aa]* ) clear
				 ;; 
			[Bb]* ) clear
				./adduser.sh
				clear
				echo "New record has been added to the database."
				sleep 3;; 
			[Cc]* ) clear
				;;
			[Dd]* ) clear
				;;
			[Ee]* ) clear
				echo "Good Bye!"
				sleep 2
				clear
				return 0;;
			* ) clear
				echo "Incorrect input!"
			    	sleep 2;;
		esac
	done
}

userInterface
