
# df

An attempt to share some dot-files

## Setup 

* Shell-specific `.rc` files are generally loaded by the shell
* Any shell-specific syntax need by placed in these (`.bashrc`, `.zshrc`, etc)
* Everything else is offloaded to `.profile`, which is loaded by each shell-specific script
* If present, `.profile` will also load a `.profile.local`, designed for per-machine config

## Install

* `git clone`
* `python3 ln.py` will (forcibly) sym-link each dotfile into `$HOME`

## Supportsed 

* bash
* zsh

