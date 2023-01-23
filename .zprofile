export ZVM_VI_INSERT_ESCAPE_BINDKEY=jk
export LANG=en_US.UTF-8
export EDITOR='nvim'
export HISTCONTROL=ignoreboth:erasedups
export PROMPT_DIRTRIM=2
export QT_QPA_PLATFORM=wayland
export npm_config_prefix="$HOME/.local"
export LESS='-R --use-color -Dd+r$Du+b'
export MANPAGER="less -R --use-color -Dd+r -Du+b"
export FREETYPE_PROPERTIES="truetype:interpreter-version=35"
export ESPIDF=/opt/esp-idf
export GTK_THEME=Fleon
export XDG_CURRENT_DESKTOP=XFCE
export GTK_THEME=Fleon:dark

if [ -x "$(command -v yarn)" ] && [ -d "$(yarn global bin)" ] ; then
    PATH="$PATH:$(yarn global bin)"
fi

if [ -d "$HOME/.config/composer/vendor/bin" ] ; then
    PATH="$PATH:$HOME/.config/composer/vendor/bin"
fi

if [ -d "$HOME/.local/bin" ] ; then
    PATH="$PATH:$HOME/.local/bin"
fi

alias diff='diff --color=auto'
alias grep='grep --color=auto'
alias dmesg='dmesg --color=always'
alias ip='ip -color=auto'
alias ls='ls --color=auto'
alias la='ls -A'
alias ll='ls -l'
alias pg='prettyping --nolegend'
alias dl="axel -4 -n4"
alias zshrc="${=EDITOR} ~/.zshrc"
alias nvimrc="${=EDITOR} ~/.config/nvim/init.lua"
alias dotfile='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
alias xz='xz -T $(nproc)'
alias ydl='youtube-dl --cookies /home/nabak/.youtube-cookies.txt -f "bestaudio/best" -ciw -o "%(title)s.%(ext)s" -v --extract-audio --audio-quality 0 --audio-format m4a --add-metadata --embed-thumbnail'
# --embed-thumbnail 
alias fzf="fzf --preview 'bat --color=always --style=numbers --line-range=:500 {}'"
alias get_idf='. /opt/esp-idf/export.sh'

