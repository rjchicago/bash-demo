#!/bin/bash
set -Eeuo pipefail

echo "process: $$"
echo "\$0=$0"

echo "
Hello from ${0%/*}!
I am ${0##*/}!
"
