# Chonker

- Arch Linux Pacman Optimizer: Your Arch Linux is too fat. Lets make it lightweight...
- 1 File, 0 Dependency, no config, no setup, works Offline, 15 lines of code, does **NOT overwrite any config** by default.

![](https://raw.githubusercontent.com/juancarlospaco/nim-chonker/master/temp.png "Does NOT run 'sudo mv', just prints the command for you")


# Compile

```
$ nim c chonker.nim
```

- Force writing to `/etc/pacman.d/chonker.conf` with `-d:overwrite`.
