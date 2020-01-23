#!/bin/bash -x

echo "Welcome to Employee Wage Computation Program"

PART_TIME_EMPLOYEE=1;
FULL_TIME_EMPLOYEE=2;
EMP_RATE_PER_HR=20;
NUMBER_OF_WORKING_DAYS=20;
MAXIMUM_HRS_IN_MONTH=100;
TOTAL_EMPLOYEE_HRS=0;
TOTAL_WORKING_DAYS=0;

function getWorkingHours()
{
	case $1 in
   	$FULL_TIME_EMPLOYEE)
      	empHrs=8
         	;;

      $PART_TIME_EMPLOYEE)
         empHrs=4
         ;;

      *)
         empHrs=0
         ;;
   esac
	echo $empHrs

}

function getDailyWage()
{
	local workHrs=$1
	wage=$(($workHrs*$EMP_RATE_PER_HR))
	echo $wage
}

while [[ $TOTAL_EMPLOYEE_HRS -lt $MAXIMUM_HRS_IN_MONTH && $TOTAL_WORKING_DAYS -lt $NUMBER_OF_WORKING_DAYS ]]
do
	(( TOTAL_WORKING_DAYS++ ))
	empHrs="$( getWorkingHours $((RANDOM%3)) )"
	TOTAL_EMPLOYEE_HRS=$(($TOTAL_EMPLOYEE_HRS+$empHrs))
	EmpDailyWage[$TOTAL_WORKING_DAYS]="$( getDailyWage $empHrs )"
done

TOTAL_SALARY=$(($TOTAL_EMPLOYEE_HRS*$EMP_RATE_PER_HR))
echo "Daily Wage " ${EmpDailyWage[@]}
