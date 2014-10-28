require 'pry'
require 'pry-doc'
require 'pry-docmore'
require 'pry-git'
require 'pry-highlight'
require 'pry-macro'
require 'pry-pretty-numeric'
require 'pry-rescue'

if RUBY_VERSION < '2.0'
  require 'pry-debugger'
  require 'pry-stack_explorer'
else
  require 'pry-byebug'
end

require 'pry-suite/version'
