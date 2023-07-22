#! /bin/bash

# used this script to automate updating of all the submodules

git submodule update --remote --merge

echo 'submodules updated, now commit and push'