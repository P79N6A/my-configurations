#!/usr/bin/env ruby -wKU

def puts_and_run(msg, cmd)
  puts "-------------------#{msg}: #{cmd}-----------------------"
  system(cmd)
  puts "\n\n"
end

def brew(tool, cmd = tool)
  return unless `#{cmd}`.include?('command not found')
  puts_and_run("Install #{tool}", "brew install #{tool}")
end

# Install homebrew
puts_and_run("Install Homebrew", 'ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"')
puts_and_run("Install Oh-My-Zsh", 'sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"')

# Run setup in current directory
system('ruby setup.rb')

# Brew install other tools
brew 'tree'
brew 'wget'
brew 'gradle'
brew 'tmux'

puts_and_run("Change gem source to taobao", 'gem sources --add https://ruby.taobao.org/ --remove https://rubygems.org/;gem sources -l')
puts_and_run("Install rvm", '\curl -sSL https://get.rvm.io | bash -s stable')
puts_and_run('install ruby latest version', 'rvm install ruby-latest')
puts_and_run('source .zshrc', "sz")
puts_and_run("Make rvm source to baobao", "sed -i .bak 's!cache.ruby-lang.org/pub/ruby!ruby.taobao.org/mirrors/ruby!' $rvm_path/config/db")
puts_and_run("Install bundle", "gem install bundle")
puts_and_run("Mirror bundle source to taobao", 'bundle config mirror.https://rubygems.org https://ruby.taobao.org')
