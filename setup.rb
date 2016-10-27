#!/usr/bin/env ruby -w
require 'date'

links = %w[zshrc vimrc gitconfig bin tmux.conf]
links.each do |link|
  target = "#{Dir.home}/.#{link}"
  if File.exist? target
    cmd = "mv #{target} #{target}_back_chriszou_#{Date.today.to_s}"
    puts cmd
    system cmd
  end
  cmd = "ln -s #{Dir.pwd}/#{link} #{Dir.home}/.#{link}"
  puts cmd
  system(cmd)
  puts ''
end
