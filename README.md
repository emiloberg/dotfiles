#Emil Oberg / dotfiles

### Installation 

Create symlinks for all dotfiles:

```
./install-dotfiles.sh
```

Install all `brew`, `brew cask` and `Apple Store` apps. This _will_ take a long time as there's a lot of apps to install. Open `Brewfile` in your favourite text editor to see what's going to be installed.

```
./install-brew.sh
```


### Update

Run

```
./save-brew.sh
```

to save all `brew`, `brew cask` and `Apple Store` apps into `Brewfile`.

Commit and push!


### Personal notes for setting up new computer

1. Install iTerm2, [https://www.iterm2.com](https://www.iterm2.com)
2. Install zsh, [http://ohmyz.sh](http://ohmyz.sh)
3. Install Homebrew, [https://brew.sh](https://brew.sh)
4. `mkdir ~/code/github && cd ~/code/github && git clone https://github.com/emiloberg/dotfiles.git`
5. Follow "Installation" above	
6. Start Dropbox to start synk (this will take a while)
7. Install 1password from AppStore (not in Brewfile because of security)
8. ?
9. Profit!

#### Settings to be made
1. iTerm Preferences > Check “Load preferences from a custom folder or URL > Select the iTerm2 folder included in this repo
2. Webstorm > Settings Repository > `https://github.com/emiloberg/webstorm-settings`.

#### To install manually
* Logitech Options (for mouse)
* FiraCoda font [https://github.com/tonsky/FiraCode/releases](https://github.com/tonsky/FiraCode/releases) (old release on Brew)
