Mac-Set-Up
==========

Setup my new mac

# Primary

##Install XCode

In **app store**, search *XCode* and install the latest version.

##Install Sublime Text2

[Visit sublime text](http://sublimetext.com/)
Download the latest version.

##Install Atom

[Visit Atom](https://atom.io/)
Download the latest version.

##Install iterm

###Install iterm2

[Visit iterm2](http://iterm2.com)
Download the latest version.

###Configure color schemes

Visit [github page](https://github.com/mbadolato/iTerm2-Color-Schemes) to get more details
`git clone https://github.com/mbadolato/iTerm2-Color-Schemes`
Import and use `MaterialDark` in iTerm2.

##Install Home brew

```
# Install Homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Install Homebrew-cask
brew install caskroom/cask/brew-cask
```

##~~Install oh-my-zsh~~(Replaced by fish)

~~`curl -L http://install.ohmyz.sh | sh`~~

##Install fish-environment

###Install fish
```
brew install fish
echo "/usr/local/bin/fish" | sudo tee -a /etc/shells
chsh -s /usr/local/bin/fish
mkdir -p ~/.config/fish
touch ~/.config/fish/config.fish
set -g -x PATH /usr/local/bin $PATH
```
Visit this [post](https://hackercodex.com/guide/install-fish-shell-mac-ubuntu/) to get more information.

###Install oh-my-fish

`curl -L http://get.oh-my.fish | fish`
Visit [github page](https://github.com/oh-my-fish/oh-my-fish) of OMF to get more details.

####Personal setup
`omf theme cmorrell ;or omf install cmorrell`

###Install fisherman, a plugin manager for fish.

`curl -Lo ~/.config/fish/functions/fisher.fish --create-dirs git.io/fisher`
Visit [github page](https://github.com/fisherman/fisherman) of fisherman to get more details.

###Install bass

`fisher edc/bass`

##Install virtualenv

`sudo easy_install virtualenv`

##Install spectacle

[Visit spectacle](http://spectacleapp.com)
Download the latest version.

##~~Install boot2docker~~(Replaced by docker-for-mac and docker-toolbox)

~~[Visit docker for Mac](https://docs.docker.com/installation/mac/)~~
~~Download the latest version.~~

Download the latest version of [docker-toolbox](https://docs.docker.com/docker-for-mac/). If you get some cross-compiling problems, you could install docker-for-mac. Docker-for-mac and docker-toolbox can coexist at the same time but with different docker environment-variables.

Visit [docker's official website](https://docs.docker.com/docker-for-mac/docker-toolbox/) to get more details about docker-for-mac and docker-toolbox.

##Install SourceTree

~[Visit gitx](http://gitx.frim.nl)~
Visit [SourceTreeApp.com](https://www.sourcetreeapp.com/)
Download the latest version.

##Install Heroku CLI

```
brew install heroku
```

##Install Dash

[Visit kapeli website](https://kapeli.com/dash) to download the latest version.

# Secondary

##Install Haskell

[Visit Haskell](http://www.haskell.org/platform/)
Download the latest version.

**Note: Remember to execute wrapper script**

##Install FileZilla

[Visit Filezilla](http://filezilla-project.org)
Download the latest version.

##Install McBopomofo

[Visit OpenVanilla](https://mcbopomofo.openvanilla.org)
Download the latest version.

# Optional

##Install Dropbox Agent

[Download Dropbox](https://www.dropbox.com/downloading?src=index&plat=mac)

##Install Google Drive Agent

[Visit Google Drive](http://www.google.com/drive/download/)

##~~Install Copy Agent~~(Project Closed)

~~[Download Copy](https://copy.com/install/mac/Copy.dmg)~~

##Install f.lux
[Visit f.lux](https://justgetflux.com)
Download the latest version.

##Install Welly

[Visit welly](https://code.google.com/p/welly/)
Download the latest version.

##Install Transmission
[Visit Transmission](http://www.transmissionbt.com/download/)
Download the latest version.
