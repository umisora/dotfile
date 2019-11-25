#!/bin/sh
install_pys=(
"3.8.0"
)

latest_ruby=""
for py in ${install_pys[@]}; do
  pyenv install $py
  pyenv global $py
  latest_py=$py
done
# list$B$N:G8e$r(Bglobal$B$K$7$F$*$/(B
pyenv global $latest_py
