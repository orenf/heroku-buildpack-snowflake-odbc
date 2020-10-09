#!/bin/bash

export ODBCSYSINI=${HOME}/.apt/usr/lib/snowflake/odbc/conf/

mkdir -p /etc
echo "[ODBC Data Sources]
SnowflakeX=SnowflakeDSIIDriver

[SnowflakeX]
Description=
Driver=SnowflakeDSIIDriver
Locale=en-US
SERVER=${SNOWFLAKE_ACCOUNT}.snowflakecomputing.com
PORT=443
SSL=on
Database=${SNOWFLAKE_DATABASE}
Schema=${SNOWFLAKE_SCHEMA}
Warehouse=${SNOWFLAKE_WAREHOUSE}
Role=${SNOWFLAKE_ROLE}
Query_Timeout=270
uid=${SNOWFLAKE_UID}
pwd=${SNOWFLAKE_PWD}
" > ${ODBCSYSINI}/odbc.ini
