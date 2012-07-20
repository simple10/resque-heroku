# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "resque/plugins/heroku/version"

Gem::Specification.new do |s|
  s.name        = "resque-heroku"
  s.version     = Resque::Plugins::Heroku::VERSION
  s.authors     = ["Joe Johnston"]
  s.email       = ["joe@simple10.com"]
  s.homepage    = ""
  s.summary     = %q{Run Resque on Heroku}
  s.description = %q{Handles establishing and disconnecting db connections when running Resque on Heroku cedar stack.}

  s.rubyforge_project = "resque-heroku"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_development_dependency "resque"
end
