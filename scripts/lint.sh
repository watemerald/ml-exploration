#!/usr/bin/env bash


set -e
set -x

flake8 ml_exploration tests
black ml_exploration tests --check
isort ml_exploration tests --check-only