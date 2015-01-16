#!/bin/bash

BAD_USERS="./badusers.lst"
HOME_DIR="/home/"

cat ${BAD_USERS} | \
while read USER
do
	userdel -r ${USER}
done
