#! /bin/bash -x
echo "Welcome to Employee Wage Computation Program"

#check employee is present or absent

attendance_check=$(( RANDOM%2 ))
if [ $attendance_check -eq 1 ]
then
	echo "employee is present"
else
	echo "employee is absent"
fi
