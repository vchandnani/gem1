# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'gem1/version'

Gem::Specification.new do |spec|
  spec.name          = "gem1"
  spec.version       = Gem1::VERSION
  spec.authors       = ["Vishal Chandnani"]
  spec.email         = ["vschandnani@gmail.com"]
  spec.extensions    = ["ext/gem1/extconf.rb"]
  spec.summary       = "My first Ruby gem!"
  spec.description   = "This Ruby gem is awesome!"
  spec.homepage      = "http://www.myfirstrubygem.com"
  spec.license       = "MIT"

  spec.bindir        = 'bin'
  spec.executable    = 'exec.rb'
  spec.files         = `git ls-files -z`.split("\x0")
  spec.platform      = Gem::Platform::RUBY
  spec.require_paths = [ 'lib', 'ext' ]
  spec.extensions    = Dir['ext/**/extconf.rb']

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake", '~> 0'
  spec.add_development_dependency "rake-compiler", '~> 0'
end
