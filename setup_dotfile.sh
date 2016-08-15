#!/bin/sh
basedir=$(cd $(dirname $0) && pwd)

# Commit Template
ln -fns ${basedir}/commit_template.txt ~/.commit_template
git config --global commit.template ~/.commit_template
