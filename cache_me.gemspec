# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "cache_me/version"

Gem::Specification.new do |s|
  s.name        = "cache_me"
  s.version     = CacheMe::VERSION
  s.authors     = ["Arun Agrawal"]
  s.email       = ["arunagw@gmail.com"]
  s.homepage    = "https://github.com/arunagw/cache_me"
  s.summary     = %q{Cache your objects into any cache store}
  s.description = %q{CacheMe allows you to cache objects of activerecord}

  s.rubyforge_project = "cache_me"

  s.add_dependency("activesupport", ["~> 3.0"])
  s.add_dependency("activerecord", ["~> 3.0"])

  s.add_development_dependency("rdoc", ["~> 3.5.0"])
  s.add_development_dependency("sqlite3", ["~> 1.3.4"])
  s.add_development_dependency("mocha", ["~> 0.9.12"])
  s.add_development_dependency("rspec", ["~> 2.6"])  

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
