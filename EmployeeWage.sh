#!/bin/bash -x

echo "Welcome to Employee Wage Computation Program"

PART_TIME_EMPLOYEE=1;
FULL_TIME_EMPLOYEE=2;
EMP_RATE_PER_HR=20;
EMPLOYEE_CHECK=$((RANDOM%2));

if [ $FULL_TIME_EMPLOYEE -eq $EMPLOYEE_CHECK ]
then
	EmpHours=8
elif [ $PART_TIME_EMPLOYEE -eq $EMPLOYEE_CHECK ]
then
	EmpHours=4
else
	EmpHours=0
fi
salary=$(($EmpHours*$EMP_RATE_PER_HR))
