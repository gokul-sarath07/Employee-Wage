#!/bin/bash
echo "Welcome to Employee Wage Computation Program"
WagePerHr=20
FullHr=8
PartHr=4
check=$(( RANDOM%3 ))
if [[ $check -eq 1 ]]
then
	echo "Full Time Employee Present"
	salary=$(( $WagePerHr * $FullHr ))
	echo "Salary: "$salary
elif [[ $check -eq 2 ]]
then
	echo "Part Time Employee Present"
	salary=$(( $WagePerHr * $PartHr ))
	echo "Salary: " $salary
else
	echo "Employee Absent"
	echo "Salary: 0"
fi
