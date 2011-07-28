# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "redirect_to_back_url/version"

Gem::Specification.new do |s|
  s.name        = "redirect_to_back_url"
  s.version     = RedirectToBackUrl::VERSION
  s.authors     = ["razenha"]
  s.email       = ["rubem.azenha@gmail.com"]
  s.homepage    = "http://github.com/razenha/redirect_to_back_url"
  s.summary     = %q{Redirects to a previously stored url}
  s.description     = %q{Redirects to a previously stored url}

  s.rubyforge_project = "redirect_to_back_url"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
