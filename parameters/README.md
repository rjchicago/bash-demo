# parameters

Resource:

* <http://mywiki.wooledge.org/BashGuide/Parameters>
* *<https://guide.bash.academy/expansions/>

`$0`

> Contains the name, or the path, of the script. This is not always reliable.

`$1`, `$2`, etc.

> Positional Parameters contain the arguments that were passed to the current script or function.

`$*`

> Expands to all the words of all the positional parameters. Double quoted, it expands to a single string containing them all, separated by the first character of the IFS variable (discussed later).

`$@`

> Expands to all the words of all the positional parameters. Double quoted, it expands to a list of them all as individual words.

`$#`

> Expands to the number of positional parameters that are currently set.

`$?`

> Expands to the exit code of the most recently completed foreground command.

`$$`

> Expands to the PID (process ID number) of the current shell.

`$!`

> Expands to the PID of the command most recently executed in the background.

`$_`

> Expands to the last argument of the last command that was executed.
