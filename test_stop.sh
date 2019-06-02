#!/bin/bash

# -------------
Color_Off='\033[0m'       # Text Reset

# Regular Colors
Black='\033[0;30m'        # Black
Red='\033[0;31m'          # Red
Green='\033[0;32m'        # Green
Yellow='\033[0;33m'       # Yellow
Blue='\033[0;34m'         # Blue
Purple='\033[0;35m'       # Purple
Cyan='\033[0;36m'         # Cyan
White='\033[0;37m'        # White

# Bold
BBlack='\033[1;30m'       # Black
BRed='\033[1;31m'         # Red
BGreen='\033[1;32m'       # Green
BYellow='\033[1;33m'      # Yellow
BBlue='\033[1;34m'        # Blue
BPurple='\033[1;35m'      # Purple
BCyan='\033[1;36m'        # Cyan
BWhite='\033[1;37m'       # White
# --------------

APP=$1
if [ ! -n "$APP" ]; then
    echo -e "${Cyan}APP Name not specified, kill FullNode by default.${Color_Off}"
    APP="FullNode"
fi


while true; do
  pid=`ps -ef |grep $APP.jar |grep -v grep |awk '{print $2}'`
  if [ -n "$pid" ]; then
    kill -15 $pid
    echo -e "${Cyan}The ${APP} process is exiting, it may take some time, forcing the exit may cause damage to the database, please wait patiently...${Color_Off}"
    sleep 1
  else
    echo -e "${BGreen}${APP} killed successfully!${Color_Off}"
    break
  fi
done

