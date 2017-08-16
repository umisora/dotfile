# Brew Install
brew -v
if [ $? -ne 0 ]; then
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
  brew tap Homebrew/brewdler
else
  echo Homebrew is already installed.
fi
