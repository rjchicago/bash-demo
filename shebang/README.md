# shebang

For years there have been great debates regarding `#!/bin/sh` vs `#!/bin/bash` vs `...`

Feel free to digress:

* <https://stackoverflow.com/questions/10376206/what-is-the-preferred-bash-shebang>
* <https://stackoverflow.com/questions/21612980/why-is-usr-bin-env-bash-superior-to-bin-bash>

TL;DR

For scripts running on Alpine w/o bash, use `#!/bin/sh` or even `#!/bin/ash`, else use `#!/bin/bash`.

``` sh
#!/bin/bash
```

 ... else use WTF you want! `¯\\_(ツ)_/¯`
