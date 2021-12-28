# Install xhyve & docker-machine-driver-xhyve
brew_install_or_upgrade xhyve
brew_install_or_upgrade docker-machine-driver-xhyve
# docker-machine-driver-xhyve need root owner and uid
sudo chown root:wheel $(brew --prefix)/opt/docker-machine-driver-xhyve/bin/docker-machine-driver-xhyve
sudo chmod u+s $(brew --prefix)/opt/docker-machine-driver-xhyve/bin/docker-machine-driver-xhyve

# Install envsubt tool
brew_install_or_upgrade gettext

# Install deployment tools/otherCLI
brew_install_or_upgrade kubectl
brew_install_or_upgrade kompose
