#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

PATH="/Users/anmichel.rodriguez/Library/Python/3.10/bin:$PATH"
PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"
PATH="/usr/local/opt/findutils/libexec/gnubin:$PATH"
PATH="/usr/local/opt/gnu-tar/libexec/gnubin:$PATH"
PATH="/usr/local/opt/gnu-sed/libexec/gnubin:$PATH"

#PATH="/usr/local/opt/gnu-indent/libexec/gnubin:$PATH"
#PATH="/usr/local/opt/gnu-getopt/bin:$PATH"

PATH="/usr/local/opt/grep/libexec/gnubin:$PATH"

MANPATH="/usr/local/opt/coreutils/libexec/gnuman:$MANPATH"

export LESS="-XR"
alias ls="ls --color --group-directories-first"
alias lr="ls -Ahlrt"
alias tf=terraform
alias tfa="tf apply"
alias tfan="tf apply -auto-approve"
alias cat=bat
alias activate='. venv/bin/activate'
PATH="/usr/local/opt/make/libexec/gnubin:$PATH"
alias ack='ack --ignore-dir=.terraform'
alias p='python3'
alias tf1='cd ~/Documents/repos/ann/ann01-tioprod'
alias history='history -i'
alias cuts='cut -d" "'
alias rep='cd ~/Documents/repos'
export PATH="/usr/local/opt/libpq/bin:$PATH"
export ACK_PAGER=less
test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

#alias ptf=pylect-infra-terraform
#alias pokta=pylect-infra-okta
#alias pinfra="pylect-infra"