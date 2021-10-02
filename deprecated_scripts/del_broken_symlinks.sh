#!/bin/bash

# Find all broken symlinks in curr dir and delete them
find ${HOME} -type l -follow -maxdepth 1 | xargs rm
