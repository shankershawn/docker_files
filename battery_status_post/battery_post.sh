#!/bin/bash
echo "Starting battery_status_post.sh"
while true
do
	export level=$(acpi | sed "s|%||" | awk {'printf $4'} | sed "s|,||")
	export status=$(acpi | sed "s|,||" | awk {'printf $3'} | sed "s|Discharging|1|" | sed "s|Charging|2|" | sed "s|Full|2|")
	if [ $level -lt 40  ] && [ $status -eq 1 ]
	then
		export ringcount=$((((( 40 - $level ) / 5)) + 1))
		curl --silent --output /dev/null -X POST http://129.154.37.114:5001/v1/message/battery_level -H "Content-Type: application/json" -d '{"pulseCount":'${ringcount}',"pulseMillis":200,"intervalMillis":100}'
	fi
	sleep 5
done
