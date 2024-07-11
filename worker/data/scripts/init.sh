#!/bin/bash

set -ex

if allorad keys --keyring-backend test show faceworker >/dev/null 2>&1 ; then
echo "faceworker account already imported"
else
echo "Importing account faceworker from hexcoded private key"
allorad keys import-hex --home=/data/.allorad --keyring-backend test faceworker dc558c9925e4fe830a666bfcde6804d759a7703ad1bd1530cf6cb080a7086410
fi