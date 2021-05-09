# 1995parham.pdf

![GitHub Workflow Status](https://img.shields.io/github/workflow/status/1995parham/1995parham.pdf/latex?label=latex&logo=github&style=flat-square)

## Introduction

Get to know me :dancer:

## Pre-Build Version

Pre-build versions are available as Github Releases in PDF.
Each release has build date as its name.

## Build Yourself

1. [Texlive](https://tug.org/texlive/) or any other tex distributions.
   Also you can use [my dotfiles](https://github.com/1995parham/dotfiles) to install texlive.

```sh
./start.sh texlive
```

2. Install requirements

```sh
sudo tlmgr install moderncv academicons fontawesome5 multirow arydshln roboto
```

3. Make the resume!

```sh
latexmk main.tex
```
