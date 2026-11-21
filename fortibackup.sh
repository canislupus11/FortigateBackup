#!/bin/bash

LIST_FORTI="_HOST_LIST"
USR="_FORTI_USER"
PWD="_FORTI_USER_PASSWORD"
timestamp=$(date +"%y-%m-%d")

for host in $LIST_FORTI
do
  sshpass -p "$PASS" ssh -oStrictHostKeyChecking=no $USR@$host > /root/backup_forti/"${timestamp}_${host}.conf" <<EOF
config system console
set output standard
end
show full-configuration
EOF
done
exit
