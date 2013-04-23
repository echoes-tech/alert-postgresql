#!/bin/sh 

####
#
# ECHOES Alert Database Update
# 
# THIS SCRIPT IS CONFIDENTIAL AND PROPRIETARY TO ECHOES TECHNOLOGIES SAS
# AND MAY NOT BE REPRODUCED, PUBLISHED OR DISCLOSED TO OTHERS WITHOUT
# COMPANY AUTHORIZATION.
# 
# COPYRIGHT 2013 BY ECHOES TECHNOLGIES SAS
#
####
#
# CREATION : 23/04/2013 by Florent Poinsaut <florent.poinsaut@echoes-tech.com>
# REVISION : -
#            -
VERSION="0.1"
#
####

########################
# VARIRABLES DEFINITIONS
########################
HOST="172.16.3.102"
PORT=5432
DBNAME="echoes"
USERNAME="echoes"
PASSWORD="toto"

##############
# HELP MESSAGE
##############
HELP="Usage: update.sh [OPTION]... FIRST_SCRIPT_NUMBER LAST_SCRIPT_NUMBER
Execute SQL script from FIRST_SCRIPT_NUMBER (0..999) to LAST_SCRIPT_NUMBER (0..999)
FIRST_SCRIPT_NUMBER must be lower or equal than LAST_SCRIPT_NUMBER
Example: update.sh 004 011\n
Miscellaneous:
  -h\tdisplay this help and exit
  -v\tprint version information and exit
Report bugs to <contact@echoes-tech.com>.\n"

#################
# VERSION MESSAGE
#################
VERSION="update.sh $VERSION\n
Copyright (C) 2013 ECHOES Technologies SAS.
This script is confidential and proprietary to ECHOES Technologies SAS and may not be reproduced, published or disclosed to other without company authorization.
There is NO WARRANTY, to the extent permitted by law.\n"

###############
# CHECK OPTIONS
###############

## Using getopts to process script options
## Put all your options here (an option with ":" is followed by an argument)

while getopts hv option
do
 case $option in

  h)
  printf "$HELP"
  exit 0 ;;

  v)
  printf "$VERSION"
  exit 0 ;;
 esac
done

#######################
# FUNCTIONS DEFINITIONS
#######################

check_input() {
  if [ $1 -le 0 -o $2 -le 0 -o $1 -gt $2 ]
  then
    printf "$HELP"
    exit 1
  fi
}

sql_update() {
  i=$1
  while [ $i -le $2 ]
  do
    if [ $i -lt 10 ]
    then
      TMP=00${i}
    elif [ $i -ge 10 -a $i -lt 100 ]
    then
      TMP=0${i}
    elif [ $i -ge 100 -a $i -lt 1000 ]
      TMP=$i
    else
      printf "$HELP"
      exit 1
    fi

    SSLMODE=required psql -h $HOST -p $PORT -d $DBNAME -U $USERNAME -W $PASSWORD -f ${TMP}_*
    i=$((i+1))
  done
}

###########
# EXECUTION
###########

if [ $# -ne 2 ]
then
        printf "$HELP"
else
	check_input $1 $2
	sql_update $1 $2
fi

