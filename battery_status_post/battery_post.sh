#!/bin/bash
while true
do
	export level=acpi | sed "s|%||" | awk {'printf $4'} | sed "s|,||"
	export status=acpi | sed "s|,||" | awk {'printf $3'} | sed "s|Discharging|1|" | sed "s|Charging|2|"
	curl -X POST https://battery-service-staging.herokuapp.com/v1/batterylevel/poom/tzOsQ7es/${status}/${level}
	sleep 5
done
