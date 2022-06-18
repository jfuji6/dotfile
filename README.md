# dotfile
Bare repo for tracking dotfiles

## Getting Started
Shamelessly copied from: https://www.atlassian.com/git/tutorials/dotfiles
Use the following commands to create a bare git repo.
``` shell
git init --bare $HOME/.dotfile
alias config='/usr/bin/git --git-dir=$HOME/.dotfile/ --work-tree=$HOME'
config config --local status.showUntrackedFiles no
echo "alias config='/usr/bin/git --git-dir=$HOME/.dotfile/ --work-tree=$HOME'" >> $HOME/.zshrc
```
- The first line creates a folder ~/.cfg which is a Git bare repository that will track our files.  This is only needed when creating a bare repo from scratch.  See "Cloning Repo" to clone this repo as a bare repo.
- Then we create an alias config which we will use instead of the regular git when we want to interact with our configuration repository.
- We set a flag - local to the repository - to hide files we are not explicitly tracking yet. This is so that when you type config status and other commands later, files you are not interested in tracking will not show up as untracked.
- Also you can add the alias definition by hand to your .bashrc or use the the fourth line provided for convenience.

## Cloning Repo
- Clone dotfiles by cloning the repo as bare repository.
``` shell
git clone --bare <git-repo-url> $HOME/.cfg
```
