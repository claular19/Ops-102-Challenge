#!/bin/bash
# Script Name: 201 Ops Challenge 5
# Author: Lars Clausen
# Date of last revision: 2/13/22

# Displays running proccesses 

ps aux

# Asks user for PID

echo "Give a proccess ID to terminate a process"
read PID

# Ask user if yes/no if they want to proceed and kills process if yes.  

echo "Are you sure you want to end this process?"
read option

if [ $option == 'Yes']
then
	kill -15 $PID
fi
if [ $option == 'No' ]
then
	break
fi

