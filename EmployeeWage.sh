#!/bin/bash -x

echo "Welcome to Employee Wage Computation Program"

isPresent=1;
empCheck=$((RANDOM%2));

if [ $isPresent -eq $empCheck ]
then
	echo "Employee is Present";
else
	echo "Employee is Absent";
fi
