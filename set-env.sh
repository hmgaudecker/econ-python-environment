#!/bin/bash

# get name of the environment by current folder
env_name=${PWD##*/}

# try to activate environment
source activate $env_name > /dev/null 2>&1
# get return code of activation
OUT=$?

# create environment if it does not exist or create is supplied
# this install packages as well
if [[ ($OUT -eq 1)  || ($1 == "create") || ($1 == "install") ]]; then
    conda env create -n $env_name -f .environment.yml
    if [ $? -ne 0 ]; then return; fi
fi

# update packages
if [[ $1 == "update" ]]; then
    conda update --all
    if [ $? -ne 0 ]; then return; fi
    if [ -f requirements.txt ]; then
        # Update all pip packages
        source activate $env_name >> /dev/null 2>&1
        pip freeze --local | grep -v '^\-e' | cut -d = -f 1  | xargs -n1 pip install -U
    fi
    # Update requirement files
    picky --update
fi

# check the return code of operations
OUT=$?


if [[ ! ($OUT -eq 1) ]]; then
    source activate $env_name
    # set alias for waf
    alias waf="python waf.py"

    # Set the default Waf configuration to 'bld'.
    export WAFLOCK=.lock-wafbld

fi
