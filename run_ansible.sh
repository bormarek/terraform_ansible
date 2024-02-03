#!/bin/bash
#
ansible-playbook --private-key=/Users/marek/.ssh/id_rsa ansible/playbook.yml -e "ansible_become_password=[password]"
