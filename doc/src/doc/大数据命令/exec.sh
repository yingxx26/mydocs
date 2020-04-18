#!/bin/bash
systime=`date -d "-2 minute" +%Y%m-%d-%H%M`
ym=`echo ${systime} | awk -F '-' '{print $1}'`
day=`echo ${systime} | awk -F '-' '{print $2}'`
hm=`echo ${systime} | awk -F '-' '{print $3}'`

cp /usr/local/src/sql/exportData.sql /usr/local/src/sql/exportDataExec.sql
sed -i 's/${ym}/'${ym}'/g' /usr/local/src/sql/exportDataExec.sql
sed -i 's/${day}/'${day}'/g' /usr/local/src/sql/exportDataExec.sql
sed -i 's/${hm}/'${hm}'/g' /usr/local/src/sql/exportDataExec.sql

hive -f /usr/local/src/sql/exportDataExec.sql
rm /usr/local/src/sql/exportDataExec.sql
