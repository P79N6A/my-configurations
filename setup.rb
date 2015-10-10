#!/usr/bin/env ruby -w

links = %w[zshrc vimrc gitconfig bin tmux.conf]
links.each do |link|
  cmd = "ln -s #{Dir.pwd}/#{link} #{Dir.home}/.#{link}"
  puts cmd
  system(cmd)
end
