#!/bin/bash

read -p "Test !? " choice
case "$CHOICE" in
	y|Y ) ;;
	n|N ) 
		echo no;;
	* ) ;;
esac
