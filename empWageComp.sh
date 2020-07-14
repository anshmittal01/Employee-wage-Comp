#! /bin/bash -x
echo "Welcome to Employee Wage Computation Program"

#constant values
empRatePerHr=20
empFullTimeHrs=8
empPartTimeHrs=4

#it will give 0 or 1 by using random
#check employee is present or absent
attendance_check=$(( RANDOM%2 ))

if [ $attendance_check -eq 1 ]
then
	echo "employee is present"
	salary=$(( $empRatePerHr*$empFullTimeHrs ))
	halfSalary=$(($empRatePerHr*$empPartTimeHrs))
else
	echo "employee is absent"
	salary=0
	halfSalary=0
	salary=0
fi

echo "salary of a employee: "$salary
echo "part time salary of an employee: "$halfSalary
