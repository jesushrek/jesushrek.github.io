#!/bin/sh

_raw='https://raw.githubusercontent.com/jesushrek/Dotfiles/refs/heads/master/scripts/setup/setup.sh'
_temp_scrpt='/tmp/install.sh';
printf '[~] Downloading seed.\n'

if curl -sL "${_raw}" -o "${_temp_scrpt}"; then
    printf '[ok] Downloaded the seed.\n'
    su -c "sh ${_temp_scrpt}"
fi
