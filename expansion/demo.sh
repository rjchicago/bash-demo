#!/bin/bash
set -Eeuo pipefail

# returns $foo, else "bar"
echo ${foo:-bar}

# sets $foo="bar" and returns $foo
echo ${foo:=bar}

# if $foo, returns "bar"
echo ${foo:+bar}

# returns the length of $foo
echo ${#foo}

# returns $foo chars :offset : length
echo ${foo:0:2}

# remove pattern from beginning of $foo
echo ${foo#b} # shortest pattern
echo ${foo##b} # longest pattern

# remove pattern from end of $foo
echo ${foo%r} # shortest pattern
echo ${foo%%r} # longest pattern

# replaces match (r) with value (t)
echo ${foo/r/t} # fist match
echo ${foo//r/t} # all matches

# replaces pattern from beginning
echo ${foo/#b/c}

# replaces pattern from end
echo ${foo/%r/t}

# hello!
hello=hello

echo ${hello/lo/p}
echo ${${hello/e/i}//l/p}

echo ${hello#*o}
echo ${hello##*o}