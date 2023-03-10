#!/usr/bin/env bash

color_red="\033[0;31m"
color_reset="\033[0m"

title="Composer Validate"

phar_command="composer.phar"
system_command="composer"

exec_command=""

if [ -f "$phar_command" ]; then
    exec_command=$phar_command
elif hash $system_command 2> /dev/null; then
    exec_command=$system_command
else
    echo -e "${color_red}${title} is not found.${color_reset}"
    echo "${phar_command} or ${system_command} is required."
    exit 1
fi

${exec_command} "${@}"
