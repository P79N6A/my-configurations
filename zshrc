#make ls shows color output
#export CLICOLOR=1
#export LSCOLORS=ExFxCxDxBxegedabagacad

ZSH_THEME="muse"

#Add android tools to path
export ANDROID_SDK="$HOME/Library/Android/sdk"
export ANDROID_HOME=$ANDROID_SDK

export PATH=$PATH:"$ANDROID_SDK/platform-tools:$ANDROID_SDK/tools"
export PATH="$PATH:$HOME/.bin:$HOME/bin"
export PATH="$PATH:$HOME/code/others/dotfiles/bin"

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
alias jwt="cd $HOME/code/elixir/witness"
alias jxwt="cd $HOME/code/xiaochengxu/witness"
alias jbd="cd $HOME/.vim/bundle/"
alias jdw="cd $HOME/Downloads/"
alias jsw="cd ~/softwares"
alias jmb="cd ~/.bin"
alias jms="cd $HOME/code/ruby/rails/mysite"
alias hn="hostname"
alias jr="cd $HOME/code/ruby/rails"
alias tree="tree -C"
alias ez="nvim ~/.zshrc"
alias ev="nvim ~/.vimrc"
alias ezl="vim ~/.zshrc_local"
alias sz="source ~/.zshrc"
alias cls="clear"
alias mr="chmod a+x "
alias erbs="vim ~/.vim/bundle/vim-snippets/snippets/ruby.snippets"
alias japk="cd app/build/outputs/apk/"
alias rmdbg="japk; rm *debug.apk; rm *unaligned.apk"
alias ts="tmux new -s" #Tmux new session"
alias ta="tmux attach -t"
alias tls="tmux list-sessions"
alias cpwd="pwd | pbcopy"
alias py3="python3"
alias pc="rails c -e production"
alias efr="exercism fetch ruby"
alias efjs="exercism fetch javascript"
alias jsn="cd ~/.vim/bundle/vim-snippets/snippets"
alias jrb="cd ~/code/ruby"
alias js="cd ~/code/js"
alias mdg=" mix deps.get"

#Git aliases
alias gac="git adda; git cm "
alias glb="git lbr"
alias gic="git init; gac "
alias ftm="git fetch origin master:master"
alias gpl="git pull"
alias gdc="git diff --cached"
alias uap="git pull;gp"

alias ja="cd ~/AndroidStudioProjects"
alias jk="jekyll "
alias jks="jekyll serve"
alias jkb="jekyll build"
alias jdk="cd $HOME/code/ruby/rails/daka"
alias jbg="cd $HOME/code/ruby/jekyll/blog"
alias jdoc="cd $HOME/Documents"
alias grd="gradle "
alias grc="groovyConsole"
alias del="rmtrash"
alias rm="echo Use 'del', or the full path i.e. '/bin/rm'"
alias jas="jasmine-node"
alias vbg="vim app/build.gradle"
alias cnpm="npm --registry=https://registry.npm.taobao.org --cache=$HOME/.npm/.cache/cnpm --disturl=https://npm.taobao.org/dist --userconfig=$HOME/.cnpmrc"
alias nis="cnpm install --save"
alias nisd="npm install --save-dev"
alias ni="cnpm install"
alias nrs="npm run s"
alias epi="elm package install -y"
alias tl="tmux list-sessions"
alias efe="exercism fetch elixir"
alias atm="atom ."
alias jece="cd $HOME/code/exercism/elixir"
alias jelx="cd $HOME/code/elixir"
alias ism="iex -S mix"
alias mps="mix phoenix.server"
alias elx="elixir"
alias elxc="elixirc"
alias rn="react-native"
alias rni="rn run-ios"
alias rna="rn run-android"
alias jrn="cd ~/code/reactnative"
alias show_running_activity="adb shell dumpsys window windows | grep -E 'mCurrentFocus|mFocusedApp'"
alias jex="cd ~/code/elixir"
alias py3="python3"
alias updateandpush="git pull; gp"
alias ims="source .env;iex -S mix phx.server"
alias vim="nvim"
alias bci="brew cask install"
alias bi="brew install"
alias git_set_upstream="git branch --set-upstream-to=origin/$(git rev-parse --abbrev-ref HEAD) $(git rev-parse --abbrev-ref HEAD)"
alias git_forward_master="git fetch . master:$(git rev-parse --abbrev-ref HEAD)"
alias yd="youtube-dl -f 'bestvideo[height<=1080]+bestaudio/best[height<=1080]' "
alias c="code ."
alias jn="jupyter notebook"

#make grep color matching
export GREP_OPTIONS='--color=auto'

#export TERM=xterm
export TERM=xterm-256color

export EDITOR='vim'

#Stop zsh from sharing history between different terminals
setopt no_share_history

unsetopt nomatch

# Enable iex histroy accross sessions
export ERL_AFLAGS="-kernel shell_history enabled"
[ -f /usr/local/etc/profile.d/autojump.sh ] && . /usr/local/etc/profile.d/autojump.sh

export GOPATH="$HOME/.go"
export PATH=$PATH:$GOPATH/bin
export PATH=$HOME/Library/Python/2.7/bin:$PATH
export PATH=$PATH:/anaconda3/bin

#Add for shared bash configuration
if [ -f ~/.zshrc_local ]; then
    source ~/.zshrc_local
fi

export ZSH="$HOME/.oh-my-zsh"
source $ZSH/oh-my-zsh.sh
export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
function gtag() { git tag -a $1 -m $2 }
