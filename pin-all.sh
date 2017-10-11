#!/bin/bash

# Description
#
#   Pins all the ipfs hashes in the text file
bindir="$(dirname "$(readlink -fm "$0")")"

cat $bindir/pinMe.txt | cut -d ' ' -f 1 | xargs -I {} ipfs --timeout=20m pin add -r --progress '{}' | tee --append $bindir/pin.log
