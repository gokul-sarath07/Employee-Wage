#!/bin/bash
echo "Welcome to Employee Wage Computation Program"
WagePerHr=20
FullHr=8
PartHr=4
DaysInMonth=20
check=$(( RANDOM%3 ))
case $check in
	1)
		echo "Full Time Employee Present"
		salary=$(( $WagePerHr * $FullHr * $DaysInMonth))
		echo "Monthly Salary: "$salary
		;;
	2)
		echo "Part Time Employee Present"
		salary=$(( $WagePerHr * $PartHr * $DaysInMonth))
		echo "Monthly Salary: " $salary
		;;
	0)
		echo "Employee Absent"
		echo "Monthly Salary: 0"
		;;
esac
