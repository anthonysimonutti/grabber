#!/usr/bin/env bash
set -e
source ~/.grabber-env/bin/activate

PYTHONPATH=. python -m tests/run_tests 
