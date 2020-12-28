#!/bin/bash

sqoop  import  --username  root   --password  '123456'     --connect     jdbc:mysql://192.168.181.1:3306/test?characterEncoding=UTF-8 --table aaa_copy    -m  4  --hive-import