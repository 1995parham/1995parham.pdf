<h1 align="center"> 1995parham.pdf </h1>

<p align="center">
  <img alt="GitHub Workflow Status" src="https://img.shields.io/github/actions/workflow/status/1995parham/1995parham.pdf/latex.yaml?logo=github&style=for-the-badge">
  <img alt="Me" src="https://img.shields.io/badge/me-parham-orange?style=for-the-badge">
</p>

## Introduction

Get to know me :dancer:

## Pre-Build Version

Pre-build versions are available as GitHub Releases in PDF.
Each release has build date as its name.

## Build Yourself

1. [Texlive](https://tug.org/texlive/) or any other TeX distributions.
   Also you can use [my dotfiles](https://github.com/1995parham/dotfiles) to install TeXlive.

```sh
./start.sh texlive
```

2. Install requirements

```sh
sudo tlmgr install moderncv academicons fontawesome5 multirow arydshln
```

3. Make the resume!

```sh
latexmk main.tex
```

## How to write a resume

- [The punctuation Guide](http://www.thepunctuationguide.com/index.html)
