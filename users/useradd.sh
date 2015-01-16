#!/bin/bash

GOOD_USERS="./goodusers.lst" 
BAD_USERS="./badusers.lst"
HOME_DIR="/home/"

cat ${GOOD_USERS} | \
while read USER
do
	useradd -m -d ${HOME_DIR}${USER} ${USER}

cat ${BAD_USERS} | \
while read USER
do
	userdel -r ${USER}
done