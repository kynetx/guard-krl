# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "guard-krl/version"

Gem::Specification.new do |s|
  s.name        = "guard-krl"
  s.version     = Guard::Krl::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Michael Farmer"]
  s.email       = ["mjf@kynetx.com"]
  s.homepage    = "http://code.kynetx.com"
  s.summary     = %q{Guard gem for krl}
  s.description = %q{Guard gem for krl. Automatically runs krl commit.}

  #s.rubyforge_project = "guard-krl"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_dependency 'guard', '>= 0.2.2'
  s.add_dependency 'krl'
end
