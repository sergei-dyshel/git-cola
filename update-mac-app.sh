#!/bin/bash

set -e
set -x
make PYTHON=$(brew --prefix python3)/bin/python3 \
    PYTHON_CONFIG=$(brew --prefix python3)/bin/python3-config \
    SPHINXBUILD=$(brew --prefix sphinx-doc)/bin/sphinx-build git-cola.app

appdir=/Applications/git-cola.app
rm -rf $appdir
cp -r git-cola.app $appdir