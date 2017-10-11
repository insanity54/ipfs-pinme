#!/bin/bash

bindir="$(dirname "$(readlink -fm "$0")")"

while :
do $bindir/pin-all.sh
   sleep 3
done
