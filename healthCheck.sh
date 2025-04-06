delay_monitor_folder=${DELAY_MONITOR_FOLDER}

while [![ -d $delay_monitor_folder ]]; do
    sleep 1
done

exit 0