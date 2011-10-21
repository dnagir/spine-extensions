# -*- encoding: utf-8 -*-
require File.expand_path('../lib/spine-extensions/version', __FILE__)

Gem::Specification.new do |s|
  s.name        = "spine-extensions"
  s.version     = SpineExtensions::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Dmytrii Nagirniak"]
  s.email       = ["dnagir@gmail.com"]
  s.homepage    = "http://github.com/dnagir/spine-extensions"
  s.summary     = "Bridge the gap between Spine.js and Rails and make it easier to use it"
  s.description = "This gem provides a set of handy extensions to Spine and Rails to make you a happier programmer"

  s.required_rubygems_version = ">= 1.3.6"
  s.rubyforge_project         = "spine-extensions"

  s.add_dependency             'rails', '>= 3.1.0'
  s.add_dependency             'spine-rails'
  s.add_development_dependency "bundler"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
