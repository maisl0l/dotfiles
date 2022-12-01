#!/bin/bash

read -p "Test !? " yn
case "$yn" in
	y|Y ) ;;
	n|N ) 
		echo no;;
	* ) ;;
esac
