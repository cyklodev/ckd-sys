#!/bin/bash

if [[ -w ~/.bashrc ]]
then 
	echo "Include functions and alias in .bashrc"
	cp -v alias.inc ~/
	cp -v functions.inc ~/
	echo ". ~/alias.inc" >> ~/.bashrc
	echo ". ~/functions.inc" >> ~/.bashrc
	echo " Reload .bashrc ..."
	. ~/.bashrc
else 
	echo " .profile not writable :["
fi
