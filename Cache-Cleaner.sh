#!/bin/bash

echo -e "\n"
echo -e "\e[0;32m╔═╗\e[0m┌─┐┌─┐┬ ┬┌─┐  \e[0;32m╔═╗\e[0m┬  ┌─┐┌─┐┌┐┌┌─┐┬─┐"
echo -e "\e[0;32m║  \e[0m├─┤│  ├─┤├┤───\e[0;32m║  \e[0m│  ├┤ ├─┤│││├┤ ├┬┘"
echo -e "\e[0;32m╚═╝\e[0m┴ ┴└─┘┴ ┴└─┘  \e[0;32m╚═╝\e[0m┴─┘└─┘┴ ┴┘└┘└─┘┴└─"
echo -e "\n                           By: \e[0;32mMoul_Cyber\e[0m"

sleep 2

Storage=$(df -h "$HOME" | grep -E "$(df "$HOME" | tail -1 | awk '{print $1}')" | awk '{print($4)}')

if [ "$Storage" == "0" ];
	then
		Storage="0B"
fi

echo -e "\033[33m\n -- Available Storage Before Cleaning :  || $Storage || --\033[0m"


echo -e "\033[31m\n -- Cleaning ...\n\033[0m "
