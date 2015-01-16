#!/bin/bash

GOOD_USERS="./goodusers.lst"
HOME_DIR="/home/"

cat ${GOOD_USERS} | \
while read USER
do
	useradd -m -d ${HOME_DIR}${USER} ${USER}
done
