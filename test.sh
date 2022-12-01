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
