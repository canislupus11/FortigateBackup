#!/bin/bash

LIST_FORTI="_HOST_LIST"
USR="_FORTI_USER"
PWD="_FORTI_USER_PASSWORD"
timestamp=$(date +"%y-%m-%d")

for host in $LIST_FORTI
  do
    sshpass -p $PWD ssh -oStrictHostKeyChecking=no $USR@$host "show full-configuration" > /root/backup_forti/"$timestamp"_"$host".conf
  done
exit
