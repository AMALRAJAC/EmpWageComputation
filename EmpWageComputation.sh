#!/bin/bash -x
is_parttime=1
is_fulltime=2
emp_rate_per_hour=20
total_working_days=20
total_salery=0
 for (( day=0;day<=$total_working_days;day++ ))
do
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
        salery=$(($emp_hours*$emp_rate_per_hour))
        total_salery=$(($total_salery+$salery))
done

