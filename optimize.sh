#!/bin/bash

echo Optimizing mysql table...
mysqlcheck ${MYSQLCHECK_OPTS} -h ${MYSQL_HOST} -P ${MYSQL_PORT} -u ${MYSQL_USERNAME} -p${MYSQL_PASSWORD}
echo Optimize process done
