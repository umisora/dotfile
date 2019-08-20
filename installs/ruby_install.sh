#!/bin/sh
install_rubys=(
"2.3.8"
"2.4.6"
"2.5.5"
"2.6.3"
)

latest_ruby=""
for ruby in ${install_rubys[@]}; do
  rbenv install $ruby -s
  rbenv global $ruby
  gem update --system
  gem install bundler
  gem update bundler
  gem install rubocop
  latest_ruby=$ruby
done
# list$B$N:G8e$r(Bglobal$B$K$7$F$*$/(B
rbenv global $latest_ruby
