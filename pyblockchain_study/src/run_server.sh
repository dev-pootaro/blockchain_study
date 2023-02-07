#!/bin/sh

python blockchain_server.py > /dev/null 2>&1 | \
python blockchain_server.py -p 5001 > /dev/null 2>&1 | \
python blockchain_server.py -p 5002 > /dev/null 2>&1 | \
python wallet_server.py > /dev/null 2>&1 | \
python wallet_server.py -p 8081 -g 5001 > /dev/null 2>&1 | \
python wallet_server.py -p 8082 -g 5002 > /dev/null 2>&1
