#!/usr/bin/env bash
set -e
set -x

# Create a new virtual environment for the build
VENV=".venv-$BUILD_NUMBER"
virtualenv "$VENV"
source "$VENV/bin/activate"

pip install -e .

PYTHONPATH=. python -m grabber/tests/run_tests

pep8 grabber > pep8.log || true
pyflakes grabber > pyflakes.log || true
