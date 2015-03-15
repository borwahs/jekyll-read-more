require 'rake'
require 'rake/clean'

# values to reuse
NAME = 'jekyll-read-more'
VERSION = lambda do
  require File.expand_path("../lib/jekyll-read-more", __FILE__)
  Jekyll::ReadMore::VERSION
end

# set default task to install and build the gem
task :default => :install

# tasks to manage gem
desc "Build gem"
task :build do
  sh %{gem build #{NAME}.gemspec}
end

desc "Install gem"
task :install => [:build] do
  sh %{gem install ./#{NAME}-#{VERSION.call}.gem --local}
end

desc "Uninstall gem"
task :uninstall do
  puts "Uninstalling #{NAME}"
  sh %{gem uninstall #{NAME}}
end

# get version
desc "Print current version"
task :version do
  puts "Current Version: #{VERSION.call}"
end
