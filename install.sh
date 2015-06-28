#! /usr/bin/zsh

setopt EXTENDED_GLOB
for rcfile in runcoms/^README.md(.N); do
    full_path=$(readlink -e "$rcfile")
    ln -vs "$full_path" "../.${rcfile:t}"
done
ln -vs $(readlink -e .) ../.zprezto
unsetopt EXTENDED_GLOB
