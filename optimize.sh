#!/bin/bash

echo Optimizing mysql table...
mysqlcheck ${MYSQLCHECK_OPTS} -h ${MYSQL_HOST} -P ${MYSQL_PORT} -u ${MYSQL_USER} -p${MYSQL_PASS}
echo Optimize process done
