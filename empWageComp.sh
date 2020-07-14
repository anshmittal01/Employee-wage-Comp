#! /bin/bash -x
echo "Welcome to Employee Wage Computation Program"

#constant values
empRatePerHr=20
empHrs=8

#it will give 0 or 1 by using random
#check employee is present or absent
attendance_check=$(( RANDOM%2 ))

if [ $attendance_check -eq 1 ]
then
	echo "employee is present"
	salary=$(( $empRatePerHr*$empHrs ))
else
	echo "employee is absent"
	salary=0
fi

echo "salary of a employee: "$salary