#!/bin/bash
grabberdir=`echo ~/.grabber-env`
if [ ! -d "$grabberdir" ]; then
	virtualenv ~/.grabber-env
fi
source ~/.grabber-env/bin/activate
pip install -e .
