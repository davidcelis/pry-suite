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
    pry-suite is designed to set up a nice Pry ecosystem out of the box. You are
    given Pry with access to a suite of great plugins. This list is currently
    comprised of pry-byebug (or pry-debugger for Ruby 1.9.x), pry-doc,
    pry-docmore, pry-git, pry-highlight, pry-macro, pry-pretty-numeric,
    pry-rescue and pry-stack_explorer. Finally, the gist gem is also included to
    enable Pry's gist command.
  DESCRIPTION

  s.homepage      = 'https://github.com/davidcelis/pry-suite'
  s.license       = 'MIT'

  s.files         = Dir['lib/**/*.rb']
  s.require_paths = ['lib']

  s.required_ruby_version = '>= 1.9.3'

  if RUBY_VERSION < '2.0'
    s.add_dependency 'pry-debugger'

    # pry-stack_explorer is unfortunately not compatible with pry-byebug
    # https://github.com/deivid-rodriguez/pry-byebug/pull/6
    s.add_dependency 'pry-stack_explorer'
  else
    s.add_dependency 'pry-byebug'
  end

  s.add_dependency 'pry'
  s.add_dependency 'pry-doc'
  s.add_dependency 'pry-docmore'
  s.add_dependency 'pry-git'
  s.add_dependency 'pry-highlight'
  s.add_dependency 'pry-macro'
  s.add_dependency 'pry-pretty-numeric'
  s.add_dependency 'pry-rescue'

  # Enables pry's `gist` command
  s.add_dependency 'gist'
end
