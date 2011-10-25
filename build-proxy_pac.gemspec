# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "build-proxy_pac/version"

Gem::Specification.new do |s|
  s.name        = "build-proxy_pac"
  s.version     = Build::Proxypac::VERSION
  s.authors     = ["Dennis Günnewig"]
  s.email       = ["dev@fedux.org"]
  s.homepage    = ""
  s.summary     = %q{Generate proxy.pac}
  s.description = %q{Generate a proxy.pac based on a template and a list of ip addresses}

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  #dependcies
  s.add_development_dependency "rspec"
  s.add_development_dependency "cucumber"
  s.add_development_dependency "aruba"
  s.add_development_dependency "guard"
  s.add_development_dependency "guard-cucumber"
  s.add_development_dependency "guard-rspec"
  s.add_development_dependency "bundle"
  s.add_development_dependency "pry"
  s.add_development_dependency "rb-inotify"
  s.add_development_dependency "libnotify"

  s.add_runtime_dependency "ipaddress"
  s.add_runtime_dependency "thor"
  s.add_runtime_dependency "yard"
  s.add_runtime_dependency "mustache"
end
