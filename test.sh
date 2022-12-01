#!/bin/bash

read -p "Test !? " yn
case "$yn" in
	y|Y ) 
		echo yes;;
	n|N ) 
		echo no;;
	* ) ;;
esac

read -p "Test !? " yn
case "$yn" in
	y|Y ) 
		echo yes;;
	n|N ) 
		echo no;;
	* ) ;;
esac

#echo 'Placeholder' | lolcat
#read -p "[y/n] ?" choice
#case "$choice" in 
#  y|Y|yes|Yes ) ;;
#  n|N|no|No )
#  echo placeholder
#  * ) ;;
#esac
#echo ''
