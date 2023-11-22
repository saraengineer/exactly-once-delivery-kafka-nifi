#!/bin/bash

iterations=100

for ((i = 1; i <= iterations; i++)); do
	current_time=$(date +"%Y-%m-%d %H:%M:%S")
	kafkacat -P -b kafka:9092 -t stock << EOF
	{"Symbol":"APPL","date":"$current_time","open":142.5000,"high":142.5000,"low":141.7800,"close":141.7800,"volume":3}
    {"Symbol":"APPL","date":"$current_time","open":142.5000,"high":142.5000,"low":141.7800,"close":141.7800,"volume":3}
    {"Symbol":"APPL","date":"$current_time","open":142.5000,"high":142.5000,"low":141.7800,"close":141.7800,"volume":2}
    {"Symbol":"APPL","date":"$current_time","open":148.5000,"high":148.5000,"low":148.0000,"close":148.0000,"volume":899}
    {"Symbol":"XOM","date":"$current_time","open":559.5000,"high":559.5000,"low":559.0000,"close":559.0000,"volume":9789}
    {"Symbol":"APPL","date":"$current_time","open":142.5000,"high":142.5000,"low":141.7800,"close":141.7800,"volume":99}
    {"Symbol":"XOM","date":"$current_time","open":558.5000,"high":558.5000,"low":558.3500,"close":558.5000,"volume":1} 	
EOF
	sleep 100
done
