#!/bin/bash

# also change this file

export app_name=$(sed -n 2p Makefile | awk -F ' = ' '{print $2}')

COLOR='\e[38;5;105m'
RESET='\e[0m'

echo -e "${COLOR}running entrypoint.sh${RESET}"
echo -e "${COLOR}ran entrypoint.sh${RESET}"

exec "$@"
