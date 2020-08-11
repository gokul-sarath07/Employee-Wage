#!/bin/bash
echo "Welcome to Employee Wage Computation Program"
WagePerHr=20
FullHr=8
PartHr=4
check=$(( RANDOM%3 ))
case $check in
	1)
		echo "Full Time Employee Present"
		salary=$(( $WagePerHr * $FullHr ))
		echo "Salary: "$salary
		;;
	2)
		echo "Part Time Employee Present"
		salary=$(( $WagePerHr * $PartHr ))
		echo "Salary: " $salary
		;;
	0)
		echo "Employee Absent"
		echo "Salary: 0"
		;;
esac
