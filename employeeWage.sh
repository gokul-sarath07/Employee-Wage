#!/bin/bash
echo "Welcome to Employee Wage Computation Program"
WagePerHr=20
FullHr=8
check=$(( RANDOM%2 ))
if [[ $check -eq 1 ]]
then
	echo "Employee Present"
	salary=$(( $WagePerHr * $FullHr ))
	echo "Salary: "$salary
else
	echo "Employee Absent"
	echo "Salary: 0"
fi
