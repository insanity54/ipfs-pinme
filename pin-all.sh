#!/bin/bash

# Description
#
#   Pins all the ipfs hashes in the text file


cat ./pinMe.txt | cut -d ' ' -f 1 | xargs -I {} ipfs --timeout=20m pin add -r --progress '{}' | tee --append ./pin.log
