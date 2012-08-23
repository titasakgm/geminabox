#!/usr/local/rvm/bin/ruby

gem = ARGV[0]

if (gem.nil?)
  puts "usage: ./get-gem.rb <gem>\n"
  exit(0)
end

cmd = "wget http://rubygems.org/gems/#{gem}"
puts cmd
system(cmd)

cmd = "gem inabox #{gem} -g http://127.0.0.1:9292"
puts cmd
system(cmd)

puts "Remove #{gem}"
system("rm -rf #{gem}")
