#!/bin/bash

host="$1"
# ${*:2} will grab all the arguments except the first one, which is the host we want to connect to.
echo "${*:2}" > /dev/tcp/$host/15450
