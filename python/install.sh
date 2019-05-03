#!/bin/bash
python3 -m pip install gnureadline
cp .pyrc.py $HOME/.pyrc.py
echo "Make sure to include 'set PYTHONPATH $HOME/.pyrc.py' in your config.fish or equivalent"
