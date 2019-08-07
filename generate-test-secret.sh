#!/bin/bash

cat /dev/random | LC_CTYPE=C tr -dc "[:alpha:]" | head -c 30 > ca.crt
