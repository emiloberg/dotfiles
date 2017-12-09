#Emil Oberg / dotfiles

### Installation 

1. Create symlinks for all dotfiles:

```
./install-dotfiles.sh
```

2. Install all `brew`, `brew cask` and `Apple Store` apps. This _will_ take a long time.

```
./install-brew.sh
```


### Update

1. Run

```
./save-brew.sh
```

To save all `brew`, `brew cask` and `Apple Store` apps into `Brewfile`

2. Commit and push