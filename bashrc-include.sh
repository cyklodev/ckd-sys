#!/bin/bash

if [[ -w ~/.bashrc ]]
then 
	echo "Include functions and alias in .bashrc"
<<<<<<< HEAD:bashrc-include.sh
	cp -v alias.inc ~/.alias.inc
	cp -v functions.inc ~/.functions.inc
=======
	cp -v alias ~/.alias.inc
	cp -v functions ~/.functions.inc
>>>>>>> cc668ae6b2493cee98145a3fe142489c77115196:bashrc-include.sh
	
	RC=`cat ~/.bashrc | grep alias.inc | wc -l` 
	if [[ $RC -ne 0 ]]
	then
		echo 'alias already defined in .bashrc';	
	else
		echo 'alias added in .bashrc ';	
		echo "source ~/.alias.inc" >> ~/.bashrc
	fi
	
	RC=`cat ~/.bashrc | grep functions.inc | wc -l `
        if [[ $RC -ne 0 ]]
        then
                echo 'functions already defined in .bashrc';
        else
<<<<<<< HEAD:bashrc-include.sh
                echo 'functions.inc added in .bashrc ';
=======
                echo 'functions added in .bashrc ';
>>>>>>> cc668ae6b2493cee98145a3fe142489c77115196:bashrc-include.sh
		echo "source ~/.functions.inc" >> ~/.bashrc
        fi

	echo " Reload .bashrc by sourcing it : "
	echo "source ~/.bashrc"
else 
	echo " .bashrc not writable :["
fi
