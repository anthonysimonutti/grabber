#!/usr/bin/env bash
set -e
echo "$BUILD_NUMBER"
source ~/.grabber-env/bin/activate

PYTHONPATH=. python -m tests/run_tests 
