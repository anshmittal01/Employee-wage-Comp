#! /bin/bash -x
echo "Welcome to Employee Wage Computation Program"

#constant values
empRatePerHr=20
totalSalary=0
workingDays=20
workingHrs=100
totalWorkHrs=0
totalWorkDays=0
while [[ $totalWorkHrs -lt $workingHrs && $totalWorkDays -lt $workingDays ]]
do
	attendance_check=$(( RANDOM%3 ))
	case $attendance_check in
		0)
			echo "employee is full time present"
			empHrs=8
			(( totalWorkDays++ ));;
		1)
			echo "employee is half time present"
			empHrs=4
			(( totalWorkDays++ ));;
		2)
			echo "employee is absent"
			empHrs=0;;
		*)
			echo "INVALID";;
	esac
	totalWorkHrs=$(( $totalWorkHrs+$empHrs ))
	salary=$(( $empRatePerHr*$empHrs ))
	totalSalary=$(( $totalSalary+$salary ))
done
echo "total salary of a employee: "$totalSalary
