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
# listの最後をglobalにしておく
pyenv global $latest_py
