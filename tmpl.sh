#!/usr/bin/env bash

tmpl () {
    while read -r line ; do
        x="$(eval echo \"$line\")"
        echo -e "$x"
    done
}

( [ -n "$1" ] && . $1; tmpl )
