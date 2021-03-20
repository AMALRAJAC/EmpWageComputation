#!/bin/bash -x
is_fulltime=1
is_parttime=2
emp_rate_per_hour=20

emp_check=$((RANDOM%3))
case "$emp_check" in
$is_fulltime)
        emp_hour=8
;;
$is_parttime)
        emp_hour=4
;;
*)
        emp_hour=0
;;
esac
salery=$(( $emp_rate_per_hour*$emp_hour ))

