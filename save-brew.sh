cd ~/code/github/dotfiles/
echo "Saving Brew"
brew leaves > brew.txt
echo "Saving Brew Cask"
brew cask list > brew-cask.txt
echo "Done"
