#!/bin/bash
#
# TriOS-SecurityAutomator
#    By Renato Kopke
#

if [ "$1" == "ansible-vault" ] || [ "$1" == "ansible-playbook" ] || [ "$1" == "ansible" ]; then
    exec "$@"
else
    echo "Command not found. Use ansible-playbook or ansible-vault or ansible."
    exit 1
fi
