#make ls shows color output
#export CLICOLOR=1
#export LSCOLORS=ExFxCxDxBxegedabagacad

#Add android tools to path
export ANDROID_SDK="$HOME/Library/Android/sdk"
export ANDROID_HOME=$ANDROID_SDK
export PATH=$PATH:"$ANDROID_SDK/platform-tools:$ANDROID_SDK/tools"

#Add ~/.bin to path
export PATH="$PATH:$HOME/.bin"

#Command aliases
alias ls="ls -pGF"
alias la="ls -A"
alias ll="ls -l"
alias l1="ls -1"
#Directory jumping alias
alias ..="cd .."
alias ...="cd ../.."
alias jmcf="cd ~/code/others/my-configurations/"
alias jrmb="cd ~/code/ruby/rails/remember/"
alias jft="cd ~/code/ruby/rails/fighting"
alias jws="cd $HOME/code/workspace/"
alias jbd="cd $HOME/.vim/bundle/"
alias jdw="cd $HOME/Downloads/"
alias jsw="cd ~/softwares"
alias jmb="cd ~/.bin"
alias jms="cd $HOME/code/ruby/rails/mysite"
alias hn="hostname"
alias j="autojump"
alias jr="cd $HOME/code/ruby/rails"
alias tree="tree -C"
alias gac="git adda; git cm "
alias ez="vim ~/.zshrc"
alias ev="vim ~/.vimrc"
alias ezl="vim ~/.zshrc_local"
alias sz="source ~/.zshrc"
alias cls="clear"
alias mr="chmod a+x "
alias erbs="vim ~/.vim/bundle/vim-snippets/snippets/ruby.snippets"
alias japk="cd app/build/outputs/apk/"
alias rmdbg="japk; rm *debug.apk; rm *unaligned.apk"
alias ts="tmux new -s" #Tmux new session"
alias ta="tmux attach -t"
alias cpwd="pwd | pbcopy"

#make grep color matching
export GREP_OPTIONS='--color=auto'

export TERM=xterm

#Stop zsh from sharing history between different terminals
setopt no_share_history

unsetopt nomatch

#Add for shared bash configuration
if [ -f ~/.zshrc_local ]; then
    source ~/.zshrc_local
fi

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
