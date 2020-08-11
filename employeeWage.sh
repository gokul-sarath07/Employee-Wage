#!/bin/bash
echo "Welcome to Employee Wage Computation Program"
Wage_Per_Hr=20
Days_In_Month=20
Total_Working_Hrs=100
Full_Time=1
Part_Time=2

Total_Emp_Hr=0
Total_Working_Days=0
function getWorkingHrs {
	case $1 in
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
}
while [[ $Total_Emp_Hr -lt $Total_Working_Hrs && $Total_Working_Days -lt $Days_In_Month ]]
do
	(( Total_Working_Days++ ))
	getWorkingHrs $(( RANDOM%3 ))
	Total_Emp_Hr=$(( $Total_Emp_Hr + $empHr ))
done
