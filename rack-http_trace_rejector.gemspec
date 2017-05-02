# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rack/http_trace_rejector/version'

Gem::Specification.new do |spec|
  spec.name          = "rack-http_trace_rejector"
  spec.version       = Rack::HttpTraceRejector::VERSION
  spec.authors       = ["robcole"]
  spec.email         = ["robcole@useed.org"]

  spec.summary       = %q{Reject HTTP TRACE requests via middleware.}
  spec.homepage      = "https://github.com/useed/rack-http_trace_rejector"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.14"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "byebug", "~> 9.0"
  spec.add_development_dependency 'rack', '~> 2'
end
