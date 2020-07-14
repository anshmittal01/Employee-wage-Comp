#! /bin/bash -x
echo "Welcome to Employee Wage Computation Program"

#constant values
empRatePerHr=20
totalSalary=0
workingDays=20
workingHrs=100
totalWorkHrs=0
totalWorkDays=0
declare -A dailySalary
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
	dailySalary["$totalWorkDays"]=$salary
	totalSalary=$(( $totalSalary+$salary ))
done

echo "total salary of a employee: "$totalSalary
echo -n "     day      "
echo "salary"
for key in ${!dailySalary[@]}
do
	echo -n "     $key         "
	echo "${dailySalary[$key]}"
done
