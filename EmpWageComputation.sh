#!/bin/bash -x
is_parttime=0
is_fulltime=1
max_hours_in_month=10
emp_rate_per_hour=20
num_working_days=20
total_emp_hours=0
total_working_days=0
total_salery=0
while [[ $total_emp_hours -lt $max_hours_in_month && $total_working_days -lt $num_working_days ]]
do
        ((total_working_days++))
        emp_check=$((RANDOM%3))
        case "$emp_check" in
                $is_fulltime)
                        emp_hours=8
                ;;
                $is_parttime)
                        emp_hours=4
                ;;
                *)
                        emp_hours=0
                ;;
        esac
total_emp_hours=$(($total_emp_hours+$emp_hours))
done
total_salery=$(($total_emp_hours*$emp_rate_per_hour))


