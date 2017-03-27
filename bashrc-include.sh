#!/bin/bash

if [[ -w ~/.bashrc ]]
then 
	echo "Include functions and alias in .bashrc"
	cp -v alias ~/.alias.inc
	cp -v functions ~/.functions.inc
	
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
                echo 'functions added in .bashrc ';
		echo "source ~/.functions.inc" >> ~/.bashrc
        fi

	echo " Reload .bashrc by sourcing it : "
	echo "source ~/.bashrc"
else 
	echo " .bashrc not writable :["
fi
