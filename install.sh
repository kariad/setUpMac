#!/bin/sh
# copy .bashrc
cp .bashrc ~/.bashrc
source ~/.bashrc

# Install Homebrew
echo "installing Homebrew..."
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

echo "run brew doctor"
brew doctor

echo "run brew update"
brew update

# install Apps
casks=(
    google-chrome
    google-japanese-ime
    iterm2
)

echo "start brew cask install apps..."
for cask in "${casks[@]}"; do
    echo $cask
done

# install mas
echo "start install mas"
brew install mas

mas install 442160987 # Flycut
mas install 497799835 # Xcode
mas install 803453959 # Slack
mas install 413857545 # Divvy

mas install 428834068 # Night Owl

# install Bash-it
echo "installing Bash-it"
git clone --depth=1 https://github.com/Bash-it/bash-it.git ~/.bash_it
~/.bash_it/install.sh