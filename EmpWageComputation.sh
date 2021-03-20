#!/bin/bash
is_parttime=1
is_fulltime=2
max_hours_in_month=10
emp_rate_per_hour=20
num_working_days=20
total_emp_hours=0
total_working_days=0
total_salery=0
count=0
function workhours(){
case "$1" in

$is_fulltime)
        emp_hours=8
        return $emp_hours
;;
$is_parttime)
        emp_hours=4
        return $emp_hours
;;
*)
        emp_hours=0
        return $emp_hours
;;
esac

}

while [[ $total_emp_hours -lt $max_hours_in_month && $total_working_days -lt $num_working_days ]]
do
        ((total_working_days++))
        workhours $((RANDOM%3))
        emp_hours=$?
total_emp_hours=$(($total_emp_hours+$emp_hours))
daily_wage=$(($emp_rate_per_hour*$emp_hours))
count1=$(($count1+1))
arr[((count++))]="$daily_wage"
done
total_salery=$(($total_emp_hours*$emp_rate_per_hour))

arr[((count++))]="$total_salery"
echo ${arr[@]}
printf "daily_wage"
for ((i=0;i<$count1;i++))
do
 printf "\t\n${arr[i]}\t"
j=$i
done
printf "\t\n total=${arr[$j+1]}\t"



