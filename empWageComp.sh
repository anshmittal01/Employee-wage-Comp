#! /bin/bash -x
echo "Welcome to Employee Wage Computation Program"

#constant values
empRatePerHr=20
totalSalary=0
workingDays=20
workingHrs=100
totalWorkHrs=0
totalWorkDays=0

getWorkHours()
{
	case $1 in
		0)
			empHrs=8
			(( totalWorkDays++ ));;
		1)
			empHrs=4
			(( totalWorkDays++ ));;
		2)
			empHrs=0;;
		*)
			;;
	esac
}

while [[ $totalWorkHrs -lt $workingHrs && $totalWorkDays -lt $workingDays ]]
do
	attendance_check=$(( RANDOM%3 ))
	getWorkHours $attendance_check
	totalWorkHrs=$(( $totalWorkHrs+$empHrs ))
	salary=$(( $empRatePerHr*$empHrs ))
	totalSalary=$(( $totalSalary+$salary ))
done
echo "total salary of a employee: "$totalSalary
