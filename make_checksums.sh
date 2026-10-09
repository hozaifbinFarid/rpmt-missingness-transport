#!/bin/sh
# Run from the repository root after adding all files:  sh make_checksums.sh
find . -type f ! -path './.git/*' ! -name 'SHA256SUMS.txt' ! -name '.gitkeep' | sort | xargs sha256sum > SHA256SUMS.txt
echo "wrote SHA256SUMS.txt"
