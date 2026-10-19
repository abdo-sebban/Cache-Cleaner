#!/bin/bash

echo -e "\n"
echo -e "\e[0;32m╔═╗\e[0m┌─┐┌─┐┬ ┬┌─┐  \e[0;32m╔═╗\e[0m┬  ┌─┐┌─┐┌┐┌┌─┐┬─┐"
echo -e "\e[0;32m║  \e[0m├─┤│  ├─┤├┤───\e[0;32m║  \e[0m│  ├┤ ├─┤│││├┤ ├┬┘"
echo -e "\e[0;32m╚═╝\e[0m┴ ┴└─┘┴ ┴└─┘  \e[0;32m╚═╝\e[0m┴─┘└─┘┴ ┴┘└┘└─┘┴└─"
echo -e "\n                           By: \e[0;32mMoul_Cyber\e[0m"

sleep 2

get_storage()
{
	Storage=$(df -h "$HOME" | awk 'NR==2 {print $4}')
	[ "$Storage" == "0" ] && Storage="0B"
}

get_storage

echo -e "\033[32m\n -- Available Storage Before Cleaning :\033[0m  || $Storage || --"


echo -e "\n -- Cleaning ...\n "

shopt -s nullglob

clean_glob()
{
	[ $# -eq 0 ] && return 0
	/bin/rm -rf -- "$@" &>/dev/null
}

# Trash
clean_glob "$HOME"/.local/share/Trash/files/*
clean_glob "$HOME"/.local/share/Trash/info/*

# General cache
clean_glob "$HOME"/.cache/*

# VS Code
clean_glob "$HOME"/.config/Code/CachedExtensionVSIXs/*
clean_glob "$HOME"/.config/Code/CachedData/*
clean_glob "$HOME"/.config/Code/Cache/*
clean_glob "$HOME"/.config/Code/GPUCache/*
clean_glob "$HOME"/.config/Code/logs/*
clean_glob "$HOME"/.var/app/com.visualstudio.code/cache/*

# Package managers
clean_glob "$HOME"/.npm/_cacache/*

get_storage

echo -e "\033[32m\n -- Available Storage After Cleaning :\033[0m  || $Storage || --\n"

