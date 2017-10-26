Mac-Set-Up
==========

Setup my new mac in one script

```
./installation.sh
```

## Install Homebrew

```
# Install Homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

## Homebrew cask install gui apps

## iterm2

### Configure color schemes

Visit [github page](https://github.com/mbadolato/iTerm2-Color-Schemes) to get more details
`git clone https://github.com/mbadolato/iTerm2-Color-Schemes`
Import and use `MaterialDark` in iTerm2.


## Install fish-environment

### Install fish
```
brew install fish
echo "/usr/local/bin/fish" | sudo tee -a /etc/shells
chsh -s /usr/local/bin/fish
mkdir -p ~/.config/fish
touch ~/.config/fish/config.fish
set -g -x PATH /usr/local/bin $PATH
```
Visit this [post](https://hackercodex.com/guide/install-fish-shell-mac-ubuntu/) to get more information.

### Install oh-my-fish

`curl -L http://get.oh-my.fish | fish`
Visit [github page](https://github.com/oh-my-fish/oh-my-fish) of OMF to get more details.

#### Personal setup
`omf theme cmorrell ;or omf install cmorrell`

### Install fisherman, a plugin manager for fish.

`curl -Lo ~/.config/fish/functions/fisher.fish --create-dirs git.io/fisher`
Visit [github page](https://github.com/fisherman/fisherman) of fisherman to get more details.

### Install bass

`fisher edc/bass`

## Install virtualenv

`sudo easy_install virtualenv`

## Install docker-for-mac and docker-toolbox

Download the latest version of [docker-toolbox](https://docs.docker.com/docker-for-mac/). If you get some cross-compiling problems, you could install docker-for-mac. Docker-for-mac and docker-toolbox can coexist at the same time but with different docker environment-variables.

Visit [docker's official website](https://docs.docker.com/docker-for-mac/docker-toolbox/) to get more details about docker-for-mac and docker-toolbox.

## Install Haskell

[Visit Haskell](http://www.haskell.org/platform/)
Download the latest version.

**Note: Remember to execute wrapper script**

## Install FileZilla

[Visit Filezilla](http://filezilla-project.org)
Download the latest version.

## Install Dropbox Agent

[Download Dropbox](https://www.dropbox.com/downloading?src=index&plat=mac)

## Install Google Drive Agent

[Visit Google Drive](http://www.google.com/drive/download/)

## Install f.lux
[Visit f.lux](https://justgetflux.com)
Download the latest version.

## Install Welly

[Visit welly](https://code.google.com/p/welly/)
Download the latest version.

## Install Transmission
[Visit Transmission](http://www.transmissionbt.com/download/)
Download the latest version.
