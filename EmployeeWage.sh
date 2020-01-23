#!/bin/bash -x

echo "Welcome to Employee Wage Computation Program"

PART_TIME_EMPLOYEE=1;
FULL_TIME_EMPLOYEE=2;
EMP_RATE_PER_HR=20;
EMPLOYEE_CHECK=$((RANDOM%3));

case $EMPLOYEE_CHECK in
			$FULL_TIME_EMPLOYEE)
				empHrs=8;;

			$PART_TIME_EMPLOYEE)
				empHrs=4;;

			*)
			empHrs=0;;
esac

salary=$(($empHrs*$EMP_RATE_PER_HR));
