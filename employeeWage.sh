#!/bin/bash
echo "Welcome to Employee Wage Computation Program"
check=$(( RANDOM%2 ))
if [[ $check -eq 1 ]]
then
	echo "Employee Present"
else
	echo "Employee Absent"
fi
