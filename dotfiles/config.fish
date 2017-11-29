set -g fish_user_paths "/usr/local/sbin" $fish_user_paths
set -g -x PATH "$HOME/.config/yarn/global/node_modules/.bin" $PATH

set -g -x GOPATH "$HOME/Go"
set -g -x GOROOT "/usr/local/opt/go/libexec"
set -g -x PATH "$GOPATH/bin" $PATH
set -g -x PATH "$GOROOT/bin" $PATH

alias g=git
alias d=docker
