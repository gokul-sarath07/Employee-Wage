#!/bin/bash
echo "Welcome to Employee Wage Computation Program"
Wage_Per_Hr=20
Days_In_Month=20
Total_Working_Hrs=100
Full_Time=1
Part_Time=2

Total_Emp_Hr=0
Total_Working_Days=0
while [[ $Total_Emp_Hr -lt $Total_Working_Hrs && $Total_Working_Days -lt $Days_In_Month ]]
do
	(( Total_Working_Days++ ))
	check=$(( RANDOM%3 ))
	case $check in
		$Full_Time)
			empHr=8
			;;
		$Part_Time)
			empHr=4
			;;

		*)
			empHr=0
			;;
	esac
	Total_Emp_Hr=$(( $Total_Emp_Hr + $empHr ))
done
totalSalary=$(($Total_Emp_Hr * $Wage_Per_Hr))
