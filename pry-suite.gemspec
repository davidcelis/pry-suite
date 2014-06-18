# encoding: utf-8
$LOAD_PATH.unshift File.expand_path('../lib', __FILE__)
require 'pry-suite'

Gem::Specification.new do |s|
  s.name          = 'pry-suite'
  s.version       = PrySuite::VERSION
  s.authors       = ['David Celis']
  s.email         = ['me@davidcel.is']
  s.summary       = 'A metagem to install Pry with many useful plugins.'
  s.description   = <<-DESCRIPTION.gsub(/\s{4}/, '')
    pry-suite is designed to set up a nice Pry ecosystem out of the box. With
    pry-suite, you are given Pry with access to a suite of great plugins. Currently,
    the following plugins will get installed along with Pry:

     * pry-byebug (Integration with the byebug Ruby debugger)
       * On Ruby 1.9.x, this is replaced with pry-debugger
     * pry-doc (allows you to look into the Ruby builtin classes with the ? and $ commands)
     * pry-docmore (extends pry-doc for dollar-variables and keywords)
     * pry-git (method-level git commands)
     * pry-highlight (reformat strings with pretty-printing, auto-detecting JSON/XML/Ruby)
     * pry-pretty-numeric (reformats large numbers, e.g. 1234567890 to 1_234_567_890)
     * pry-rescue (provides `Pry.rescue { ... }` blocks to capture any exceptions and start a Pry session)
     * pry-stack_explorer (allows you to navigate the call stack)
  DESCRIPTION

  s.homepage      = 'https://github.com/davidcelis/pry-suite'
  s.license       = 'MIT'

  s.files         = Dir['lib/**/*.rb']
  s.require_paths = ['lib']

  s.required_ruby_version = '>= 1.9.3'

  if RUBY_VERSION < '2.0'
    s.add_dependency 'pry-debugger'
  else
    s.add_dependency 'pry-byebug'
  end

  s.add_dependency 'pry'
  s.add_dependency 'pry-doc'
  s.add_dependency 'pry-docmore'
  s.add_dependency 'pry-git'
  s.add_dependency 'pry-highlight'
  s.add_dependency 'pry-pretty-numeric'
  s.add_dependency 'pry-rescue'
  s.add_dependency 'pry-stack_explorer'

  # Enables pry's `gist` command
  s.add_dependency 'gist'
end
