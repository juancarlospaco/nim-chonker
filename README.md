# Chonker

![](https://img.shields.io/github/languages/top/juancarlospaco/nim-chonker?style=for-the-badge)
![](https://img.shields.io/github/languages/count/juancarlospaco/nim-chonker?logoColor=green&style=for-the-badge)
![](https://img.shields.io/github/stars/juancarlospaco/nim-chonker?style=for-the-badge "Star nim-chonker on GitHub!")
![](https://img.shields.io/maintenance/yes/2019?style=for-the-badge "2019")
![](https://img.shields.io/github/languages/code-size/juancarlospaco/nim-chonker?style=for-the-badge)
![](https://img.shields.io/github/issues-raw/juancarlospaco/nim-chonker?style=for-the-badge "Bugs")
![](https://img.shields.io/github/issues-pr-raw/juancarlospaco/nim-chonker?style=for-the-badge "PRs")
![](https://img.shields.io/github/commit-activity/y/juancarlospaco/nim-chonker?style=for-the-badge)
![](https://img.shields.io/github/last-commit/juancarlospaco/nim-chonker?style=for-the-badge "Commits")

- **Arch Linux Pacman Optimizer**: Your Arch Linux is too fat, lets make it lightweight...
- 1 File, 0 Dependency, no config, no setup, 15 lines of code, wont run scripts, does **NOT overwrite any config** by default.

![](https://raw.githubusercontent.com/juancarlospaco/nim-chonker/master/temp.png "Does NOT run 'sudo mv', just prints the command for you")


# Use

```
$ chonker
```

- Reply `n` or `y`. Output is only 1 INI file.


# Install

```
$ nimble install chonker
```


# Compile

```
$ git clone https://github.com/juancarlospaco/nim-chonker.git
$ cd nim-chonker/src/
$ nim c chonker.nim
```

- Force writing `/etc/pacman.d/chonker.conf` with `-d:overwrite`. Your Arch should have `/etc/pacman.d/` or create it.


# Uninstall

- If you want to undo the changes, delete `/etc/pacman.d/chonker.conf` and do an upgrade with `pacman`.


# Why

People nowadays checks documentation online, so theres no point on shipping it with the packages,
some packages even have images, photos, PDFs, CSS and JS frameworks for HTML documentations,
but Docker image file size and SSD free space on VPS or Cloud is always a cool feature,
I got approx half the size on the Docker Arch image with this trick. YAGNI.


# Requisites

- [Arch Linux](https://www.archlinux.org), know how to use `pacman`. For Docker apply the config *before image build*. Dont need Nim after compile.


# Contribute without Coding

The core is 1 JSON file, so you can contribute or customize it without even knowing [Nim](https://nim-lang.org/learn.html) nor programming.


# Stars

![Star nim-chonker on GitHub](https://starchart.cc/juancarlospaco/nim-chonker.svg "Star Chonker on GitHub!")
