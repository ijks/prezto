#! /usr/bin/zsh

setopt EXTENDED_GLOB
for rcfile in runcoms/^README.md(.N); do
    full_path=$(readlink -e "$rcfile")
    ln -s "$full_path" "../.${rcfile:t}"
done
unsetopt EXTENDED_GLOB
