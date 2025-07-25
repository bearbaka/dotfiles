#!/bin/bash
#
# Credit: github.com/ericmurphyxyz/dotfiles/blob/xorg
#
tmp="$(mktemp)"
# `command` is needed in case `lfcd` is aliased to `lf`
command lf -last-dir-path "$tmp" "$@"
if [ -f "$tmp" ]; then
	dir="$(cat "$tmp")"
	rm -f "$tmp"
	if [ -d "$dir" ]; then
		if [ "$dir" != "$(pwd)" ]; then
			cd "$dir"
		fi
	fi
fi
$HOME/.config/lf/lf-kitty-clean.sh
