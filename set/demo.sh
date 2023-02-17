#!/bin/bash

trap 'echo "ERROR in ${FUNCNAME:-$0}${FUNCNAME:+() of $0}"' ERR

# DOCS:
# https://ss64.com/bash/set.html
# https://www.gnu.org/software/bash/manual/html_node/The-Set-Builtin.html

# DEMO USAGE:
# sh errors/demo.sh && echo \\nSUCCESS! || echo \\nFAILED!
# FOO=BAR !!

# TODO: try commenting various combinations:
set -E # ERR trap
set -e # exit on non-zero status
set -u # error on unset variables
set -o pipefail # exit status of last command. with -e, exit on any error

# TODO: try uncommenting:
# : ${FOO:?Variable FOO must be set!}

# TODO: toggle -u and try the following:
echo "FOO=${FOO:-(FOO NOT SET!)}"
# echo "FOO=$FOO"

# error function
function barf { false; :; }

echo "\nbarf!"
barf

echo "\nerror!"
false

# TODO: try commenting/uncommenting:
echo "done"