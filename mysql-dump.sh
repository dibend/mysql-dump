#!/bin/bash

user=$1
password=$2
db=$3

for table in `mysql -B -u $user -p$password --disable-column-names --execute "use $db; show tables;"`
do 
  echo $table
  mysql -u $user -p$password --execute "use $db; select * from $table;"
done
