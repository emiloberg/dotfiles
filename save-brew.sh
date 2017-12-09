cd ~/code/github/dotfiles/
echo "Saving Brew"

brew bundle dump --force

# Remove unwanted packages
grep -vwE "(1Password|AnotherAppNotToSave)" Brewfile > CleanBrewfile

rm Brewfile
mv CleanBrewfile Brewfile

echo "Done"
