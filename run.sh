#!/bin/bash

set -e

set | egrep '^(MYSQL_HOST|MYSQL_PORT|MYSQL_USERNAME|MYSQL_PASSWORD|MYSQLCHECK_OPTS|)=' > /etc/environment

STDOUT_LOC=${STDOUT_LOC:-/proc/1/fd/1}
STDERR_LOC=${STDERR_LOC:-/proc/1/fd/2}

echo "${CRON_TIME} root /optimize.sh > ${STDOUT_LOC} 2> ${STDERR_LOC} 2>&1" > /etc/crontab

exec cron -f
