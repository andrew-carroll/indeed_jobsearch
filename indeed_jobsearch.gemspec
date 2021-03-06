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
  spec.description   = %q{A client library for searching Indeed jobs without using the official API. There are a couple advantages to this, including not requiring authorization, as well as being able to fetch search results for third-party job ads. If you are looking for a client library for the official API, use Indeed's official gem, indeed-ruby, instead.}
  spec.homepage      = "http://github.com/andrew-carroll/indeed_jobsearch"
  spec.licenses      = ['MIT']

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "bin"
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.required_ruby_version = '>= 2.1.2'
  spec.add_development_dependency "bundler", "~> 1.9"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.3", ">= 3.3.0"
  spec.add_development_dependency "guard-rspec", "~> 4.6", ">= 4.6.4"
  spec.add_development_dependency "pry", "~> 0.10", ">= 0.10.1"
  spec.add_development_dependency "pry-remote", "~> 0.1", ">= 0.1.8"
  spec.add_development_dependency "pry-nav", "~> 0.2", ">= 0.2.4"
  spec.add_development_dependency "simplecov", "~> 0.10", ">= 0.10.0"
  spec.add_development_dependency "coveralls", "~> 0.8", ">= 0.8.2"
  spec.add_runtime_dependency "mechanize", "~> 2.7", ">= 2.7.3"
end
