#! /bin/bash -x
echo "Welcome to Employee Wage Computation Program"

#constant values
empRatePerHr=20

attendance_check=$(( RANDOM%3 ))

case $attendance_check in
	0)
		echo "employee is full time present"
		empHrs=8;;
	1)
		echo "employee is half time present"
		empHrs=4;;
	2)
		echo "employee is absent"
		empHrs=0;;
	*)
		echo "INVALID";;
esac

salary=$(( $empRatePerHr*$empHrs ))

echo "salary of a employee: "$salary
