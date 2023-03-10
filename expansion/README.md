# expansion

See <http://mywiki.wooledge.org/BashGuide/Parameters>

`${parameter:-word}`

> Use Default Value. If 'parameter' is unset or null, 'word' (which may be an expansion) is substituted. Otherwise, the value of 'parameter' is substituted.

`${parameter:=word}`

> Assign Default Value. If 'parameter' is unset or null, 'word' (which may be an expansion) is assigned to 'parameter'. The value of 'parameter' is then substituted.

`${parameter:+word}`

> Use Alternate Value. If 'parameter' is null or unset, nothing is substituted, otherwise 'word' (which may be an expansion) is substituted.

`${parameter:offset:length}`

> Substring Expansion. Expands to up to 'length' characters of 'parameter' starting at the character specified by 'offset' (0-indexed). If ':length' is omitted, go all the way to the end. If 'offset' is negative (use parentheses!), count backward from the end of 'parameter' instead of forward from the beginning. If 'parameter' is @ or an indexed array name subscripted by @ or *, the result is 'length' positional parameters or members of the array, respectively, starting from 'offset'.

`${#parameter}`

> The length in characters of the value of 'parameter' is substituted. If 'parameter' is an array name subscripted by @ or *, return the number of elements.

`${parameter#pattern}`

> The 'pattern' is matched against the beginning of 'parameter'. The result is the expanded value of 'parameter' with the shortest match deleted.
If 'parameter' is an array name subscripted by @ or *, this will be done on each element. Same for all following items.

`${parameter##pattern}`

> As above, but the longest match is deleted.

`${parameter%pattern}`

> The 'pattern' is matched against the end of 'parameter'. The result is the expanded value of 'parameter' with the shortest match deleted.

`${parameter%%pattern}`

> As above, but the longest match is deleted.

`${parameter/pat/string}`

> Results in the expanded value of 'parameter' with the first (unanchored) match of 'pat' replaced by 'string'. Assume null string when the '/string' part is absent.

`${parameter//pat/string}`

> As above, but every match of 'pat' is replaced.

`${parameter/#pat/string}`

> As above, but matched against the beginning. Useful for adding a common prefix with a null pattern: "${array[@]/#/prefix}".

`${parameter/%pat/string}`

> As above, but matched against the end. Useful for adding a common suffix with a null pattern.

`${parameter:?message}`

> If not set, error is raised with the provided message.

## Demos

``` sh
file="$HOME/.secrets/007"
echo $file
echo ${file##*/}
echo ${file%/*}
echo ${file//0/O}
echo ${secret:-NA}
echo ${secret:=$file}
echo ${secret:+sh!}
echo ${secret##*/}
echo ${#other}
```
