#!/bin/bash

echo Starting optimizing mysql tables on $(date)...
time mysqlcheck ${MYSQLCHECK_OPTS} -h ${MYSQL_HOST} -P ${MYSQL_PORT} -u ${MYSQL_USERNAME} -p${MYSQL_PASSWORD}
echo Optimize process finished on $(date)
