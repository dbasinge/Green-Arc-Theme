#!/usr/bin/bash

which sass &> /dev/null
if [ $? -eq 0 ]; then
	sass --version
	sass --update --sourcemap=none .
else
	bundle exec sass --version
	bundle exec sass --update --sourcemap=none .
fi
