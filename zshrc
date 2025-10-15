HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -e

zstyle ':completion:*' menu select

zshcache_time="$(date +%s%N)"

autoload -Uz compinit promptinit add-zsh-hook
compinit
promptinit

rehash_precmd() {
  if [[ -a /var/cache/zsh/pacman ]]; then
    local paccache_time="$(date -r /var/cache/zsh/pacman +%s%N)"
    if (( zshcache_time < paccache_time )); then
      rehash
      zshcache_time="$paccache_time"
    fi
  fi
}

add-zsh-hook -Uz precmd rehash_precmd

prompt redhat

source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias vim='nvim'
alias time='/usr/bin/time'

# Cargo
export PATH="$HOME/.cargo/bin:$PATH"

# bun completions
[ -s "$HOME/.bun/_bun" ] && source "$HOME/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# jlink
export PATH="$HOME/Tools/JLink/JLink_Linux_V874a_x86_64:$PATH"
