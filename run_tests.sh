#!/usr/bin/env bash
set -x

# Create a new virtual environment for the build
VENV=".venv-$BUILD_NUMBER"
virtualenv "$VENV"
source "$VENV/bin/activate"

rm -rf pep8.log pyflakes.log .coverage coverage.xml coverage/

pip install -e .

PYTHONPATH=. python -m coverage run grabber/tests/run_tests.py

python -m coverage xml -o coverage.xml
python -m coverage html -d coverage

pep8 grabber > pep8.log || true
pyflakes grabber > pyflakes.log || true
