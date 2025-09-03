#!/usr/bin/env zsh 
#
# Personal aliases. Aliases overriding those provided by Oh-My-Zsh libs,
# plugins, and themes, should be defined within the ZSH_CUSTOM folder. For a
# full list of active aliases, run `alias`.

alias pls='sudo $(fc -ln -1)'
alias l='ls -CF'
alias ll='ls -lhF'
alias la='ls -lahF'
alias cl='clear'
alias ps='ps -elf'
#alias vim='nvim' # vim is actually neovim
alias port='lsof -nP -i |grep LISTEN |grep' # sudo for ports < 1024 or procs you don't own
alias luuid='uuidgen | tr "[:upper:]" "[:lower:]"' # Lowercase UUIDv4. Use | pbcopy to add to clipboard.
alias caffeinate='caffeinate -disu'
alias stay='caffeinate -disu'

# +-------------------+
# | date and calendar |
# +-------------------+
alias date='date -R'  # Use RFC 2822 date and time output format.
alias unixdate='date +%s' # UNIX timestamp.

# +------+
# | Java |
# +------+
alias jh='/usr/libexec/java_home'
alias jhl='/usr/libexec/java_home -V | grep -v /Library/Java'

# +-----------+
# | Terraform |
# +-----------+
alias tf='terraform'
alias tg='terragrunt'
alias tglint='terragrunt hclfmt' # Equivalent to a recursive terraform fmt

# +------------+
# | Kubeconfig |
# +------------+
# e.g. alias todev='hash -r && export KUBECONFIG=~/.kube/dev.config'

# +---------------------+
# | Assume AWS IAM role |
# +---------------------+
#alias awsunset='unset AWS_SECRET_ACCESS_KEY; unset AWS_SESSION_TOKEN; unset AWS_SECURITY_TOKEN; unset ASSUMED_ROLE;'

