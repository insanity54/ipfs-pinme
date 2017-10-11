#!/bin/bash

# Description
#
#   Pins all the ipfs hashes in the text file


<<<<<<< HEAD
cat ./pinMe.txt | cut -d ' ' -f 1 | xargs -I {} ipfs --timeout=20m pin add -r --progress '{}' | tee --append ./pin.log
=======
cat ./pinMe.txt | cut -d ' ' -f 1 | xargs -I {} ipfs --timeout=1m pin add -r --progress '{}'
>>>>>>> f2740fa818b225ce352481d9ff3c370f928da93f
