# set

By default, scripts will exit the status of the last command executed. This may **not** be an error code **even if** the script fails. For example:

``` sh
# last command is a failure
echo "false;" | sh; echo $?
# 1 <-- failure

# failure command, followed by successful
echo "false; true;" | sh; echo $?
# 0 <-- successful

# same as above, but now setting '-e'
echo "set -e; false; true" | sh; echo $?
# 1 <-- failure
```

At a minimum, you should `set -e` for scripts to exit with a proper error code on failure.

My recommendation is to include the following flags at the beginning of every script:

``` sh
#!/bin/bash
set -Eeuo pipefail
```

<https://ss64.com/bash/set.html>

* `E`: errtrace - If set, any trap on ERR is inherited by shell functions, command substitutions, and commands executed in a sub‐ shell environment.
* `e`: Exit immediately if a simple command exits with a non-zero status, unless the command that fails is part of an until or while loop, part of an if statement, part of a && or || list, or if the command's return status is being inverted using !.
* `u`: Treat unset variables as an error when performing parameter expansion. An error message will be written to the standard error, and a non-interactive shell will exit.
* `o pipefail`: If set, the return value of a pipeline is the value of the last (rightmost) command to exit with a non-zero status, or zero if all commands in the pipeline exit successfully. By default, pipelines only return a failure if the last command errors. When used in combination with set -e, pipefail will make a script exit if any command in a pipeline errors.

## trap

You may optionally include an ERR trap handler to provide additional messaging when a failure occurs:

``` sh
trap 'echo "ERROR in ${FUNCNAME:-$0}${FUNCNAME:+() of $0}"' ERR

# example message when error occurs within a script:
ERROR in scripts/example.sh

# example message when error occurs within a function:
ERROR in my_function() of scripts/example.sh
```

## demo

``` sh
sh demo.sh && echo \\nSUCCESS! || echo \\nFAILED!
```
