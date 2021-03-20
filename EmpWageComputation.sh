#!/bin/bash -x
is_present=1
is_absent=0
emp_check=$((RANDOM%2))
if [ $emp_check -eq $is_present ]
then
        echo "employee present"
else
        echo "employee absent"
fi
