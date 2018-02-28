#!/usr/bin/env bash
set -e

# Create a new virtual environment for the build
VENV=".venv-$BUILD_NUMBER"
virtualenv "$VENV"
source "$VENV/bin/activate"

PYTHONPATH=. python -m tests/run_tests 
