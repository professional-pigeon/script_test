#!/usr/bin/env ruby
require ('fileutils')

puts "enter the name of your file tree"
name = gets.chomp
FileUtils.mkdir(name)
FileUtils.cd(name)
FileUtils.mkdir("lib")
FileUtils.mkdir("spec")
FileUtils.touch("Gemfile")
File.write("./Gemfile", "gem 'rspec'
gem'pry'")
input = "Y"
until input === "N"
puts "Create a logic and spec file under what name?"
file_name = gets.chomp
FileUtils.touch("./lib/#{file_name}_logic.rb")
File.write("./lib/#{file_name}_logic.rb", "require 'pry'

class #{file_name}
end")
FileUtils.touch("./spec/#{file_name}_specs.rb")
File.write("./spec/#{file_name}_specs.rb", "require 'rspec'
require '#{file_name}'

describe(#{file_name}) do
end")
puts "Create another spec and logic file? Y or N"
input = gets.chomp
end