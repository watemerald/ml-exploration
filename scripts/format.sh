#!/bin/sh -e
set -x

autoflake --remove-all-unused-imports --recursive --remove-unused-variables --in-place ml_exploration tests --exclude=__init__.py
black ml_exploration tests
isort ml_exploration tests