#!/bin/bash
hash brew 2>/dev/null || { 

	echo >&2 "Brew is required but it's not installed. Installing.";
	/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)";
}

hash ansible-playbook 2>/dev/null || { 

	echo >&2 "Ansible is required but it's not installed. Installing.";
	brew install ansible;
}

ansible-playbook -i "local," -c local ansible/main.yml