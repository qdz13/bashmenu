# Bashmenu
English | [日本語](README-ja.md)

<img src="preview.png" width="400">

Bashmenu is a minimal TUI tool for choosing one from a given arguments.

It's written in Bash, and does not require additional dependencies!

## Installation
```sh
git clone https://codeberg.org/qdz13/bashmenu.git
cd bashmenu
sudo make install
```

## Usage
```sh
bashmenu "one" "two" "three"
```

Run `man bashmenu` to see the explanation of options and key binds.

## Example

Example Bash script to choose an editor:

```bash
#!/bin/bash
# Usage: select-editor [file ...]

editors=(
	"vi"
	"nvi"
	"vim"
	"nvim"
)

[ $# -eq 0 ] && exit 1
answer=$(bashmenu "${editors[@]}")
[ -n "$answer" ] && exec "$answer" "$@" || exit 0
```
