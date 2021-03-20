#!/bin/bash -x
is_fulltime=1
is_parttime=2
 emp_check=$((RANDOM%3))
 emp_rate_per_hour=20
if [ $is_fulltime -eq $emp_check ]
then
        echo "employee is full time"
        emp_working_hour=8
elif [ $is_parttime -eq $emp_check ]
then
        echo "employee is parttime"
        emp_working_hour=4
else
        echo "employee is absent"
        emp_working_hour=0
fi
salery=$(( $emp_rate_per_hour*$emp_working_hour ))



