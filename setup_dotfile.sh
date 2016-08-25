#!/bin/sh
basedir=$(cd $(dirname $0) && pwd)

# Commit Template
ln -fns ${basedir}/commit_template.txt ~/.commit_template
ln -fns /Users/murakami.katsutoshi/workspace/dotfile/bashrc ~/.bashrc
git config --global commit.template ~/.commit_template
