#!/usr/bin/env zsh


t=$(cat $FUNCS_PATH)

w=( ${(s/^\n$/)t} )

print $w[1]
