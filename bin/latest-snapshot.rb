#!/usr/bin/env ruby

desktop = "Env['HOME']/Desktop"
latest = Dir["#{desktop}/Screen*.png"].sort.reverse.first

