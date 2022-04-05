#!/usr/bin/env bash

VENVNAME=ascnet_venv

python3 -m venv $VENVNAME
source $VENVNAME/bin/activate
pip install --upgrade pip

test -f requirements.txt && pip install -r requirements.txt

python -m ipykernel install --user --name=$VENVNAME

deactivate
echo "build $VENVNAME"