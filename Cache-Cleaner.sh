#!/bin/bash

echo -e "\n"
echo -e "╔═╗┌─┐┌─┐┬ ┬┌─┐  ╔═╗┬  ┌─┐┌─┐┌┐┌┌─┐┬─┐"
echo -e "║  ├─┤│  ├─┤├┤───║  │  ├┤ ├─┤│││├┤ ├┬┘"
echo -e "╚═╝┴ ┴└─┘┴ ┴└─┘  ╚═╝┴─┘└─┘┴ ┴┘└┘└─┘┴└─"
echo -e "\n                           By: Moul_Cyber"

sleep 2

Storage=$(df -h "$HOME" | grep -E "$(df "$HOME" | tail -1 | awk '{print $1}')" | awk '{print($4)}')

if [ "$Storage" == "0" ];
	then
		Storage="0B"
fi

echo -e "\033[33m\n -- Available Storage Before Cleaning :  || $Storage || --\033[0m"


