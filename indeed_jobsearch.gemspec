# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'indeed_jobsearch/version'

Gem::Specification.new do |spec|
  spec.name          = "indeed_jobsearch"
  spec.version       = IndeedJobsearch::VERSION
  spec.authors       = ["Andrew Carroll"]
  spec.email         = ["mrandrewcarroll@gmail.com"]

  spec.summary       = %q{Unofficial API for searching Indeed jobs.}
  spec.homepage      = "http://github.com/andrew-carroll/indeed_jobsearch"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "bin"
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.required_ruby_version = '>= 2.1.2'
  spec.add_development_dependency "bundler", "~> 1.9"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.3.0"
  spec.add_development_dependency "guard-rspec", "~> 4.6.4"
  spec.add_development_dependency "pry", "~> 0.10.1"
  spec.add_development_dependency "pry-remote", "~> 0.1.8"
  spec.add_development_dependency "pry-nav", "~> 0.2.4"
  spec.add_development_dependency "simplecov", "~> 0.10.0"
  spec.add_runtime_dependency "mechanize", "~> 2.7.3"
  spec.add_runtime_dependency "activesupport", "~> 4.2.3"
  spec.add_runtime_dependency "retryable", "~> 2.0.2"
end
