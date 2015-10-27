#!/bin/bash

# PURPOSE: Demostrate working with jobs.
# USAGE:   sleep_demo.sh

# User Input parameters
SLEEP_SEC=5             # Number of seconds to sleep in loop

# tell user script is starting
echo "  ** Entering sleep_demo script **  "

# infinite loop over sleep
while true
do

  echo "Going to sleep for $SLEEP_SEC seconds.."
  sleep $SLEEP_SEC

done
 

exit

