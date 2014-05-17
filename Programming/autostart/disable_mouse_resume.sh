#!/bin/bash
#printf "XHC1\n" > /proc/acpi/wakeup

if [ $(cat /proc/acpi/wakeup | grep enab | wc -l) -eq 4 ]; then
	printf "XHC1\n" > /proc/acpi/wakeup
	printf "EHC1\n" > /proc/acpi/wakeup
	printf "EHC2\n" > /proc/acpi/wakeup
else
	exit 0
fi
