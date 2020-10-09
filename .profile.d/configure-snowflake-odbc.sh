#!/bin/bash

export ODBCSYSINI=${HOME}/.apt/usr/lib/snowflake/odbc/conf/

mkdir -p /etc
echo "[snowflake]
Description=SnowflakeDB
Driver=SnowflakeDSIIDriver
Locale=en-US
SERVER=${SNOWFLAKE_ACCOUNT}.snowflakecomputing.com
PORT=443
SSL=on
CLIENT_SESSION_KEEP_ALIVE=true
Database=${DATABASE}
Schema=${SCHEMA}
Warehouse=${WAREHOUSE}
Role={ROLE}
Query_Timeout=270
uid=${UID}
pwd=${PWD}
" > ${ODBCSYSINI}/odbc.ini
