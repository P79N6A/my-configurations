#make ls shows color output
export CLICOLOR=1
#export LSCOLORS=ExFxCxDxBxegedabagacad

#Add android tools to path
export ANDROID_SDK="~/softwares/adt-bundle-mac/sdk"
export PATH="$ANDROID_SDK/platform-tools:$ANDROID_SDK/tools:$PATH"

#Add ~/.bin to path
export PATH="$PATH:~/.bin"

alias la="ls -A"

#Customize prompt title
#export PS1="\u@\h:\w$ "
export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\$ "

#make grep color matching
export GREP_OPTIONS='--color=auto'

source ~/.bin/git-completion.bash
