#!/bin/bash -x
is_present=1
emp_check=$((RANDOM%2))
if [ $is_present -eq $emp_check ]
then
        emp_rate_per_hour=20
        emp_working_hr=8
        salery=$(( $emp_rate_per_hour*$emp_working_hr ))
else
        salery=0
fi


