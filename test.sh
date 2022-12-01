#!/bin/bash

read -p "Test !? " yn
case "$yn" in
	y|Y ) 
		echo yes;;
	n|N ) 
		echo no;;
	* ) ;;
esac

read -p "Test 2 !?" yn2
case "$yn2" in
	y|n )
		echo yes2;;
	n|N )
		echo no2;;
	* ) ;;
esac
