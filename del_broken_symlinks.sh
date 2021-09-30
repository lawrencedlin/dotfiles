#!/bin/bash

# Run this in home directory
# Find all broken symlinks in curr dir and delete them
find ${1} -type l -follow -maxdepth 1 | xargs rm
