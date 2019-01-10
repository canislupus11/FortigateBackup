#!/bin/bash

LIST_FORTI="_IP_LIST"
USR="_FORTI_USER"
PWD="_FORTI_PASSWD"
timestamp=$(date +"%y-%m-%d")

for host in $LIST_FORTI
  do
    sshpass -p $PWD scp -oStrictHostKeyChecking=no $USR@$host:sys_config /backup/forti/"$timestamp"_"$host".conf
  done
exit
