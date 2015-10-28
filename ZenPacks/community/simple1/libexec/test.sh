#!/bin/sh

# Nagios return codes
STATE_OK=0
STATE_WARNING=1
STATE_CRITICAL=2
STATE_UNKNOWN=3
#
exitstatus=$STATE_OK

# Nagios format echos information and status followed by pipe |
#  followed by <var name>=<value> tuples
# Note that Zenoss datapoints must match these var names exactly
#
echo "This is a test - status OK | timevar=31s sizevar=15B percentvar=10% countervar=123c"
exit $exitstatus
