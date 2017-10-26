# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'vestacp/version'

Gem::Specification.new do |spec|
  spec.name          = "vestacp2"
  spec.version       = Vestacp::VERSION
  spec.authors       = ["Umut ADALI","Dmitry Knyazev"]
  spec.email         = ["kobeumut@gmail.com"]
  spec.summary       = %q{VestaCP API bindings}
  spec.description   = %q{Developed and tested on version 0.9.8-14. Only to do simple things with user accounts. That's not a problem to make them more complicated :)}
  spec.homepage      = ""
  spec.license       = "MIT"

  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]


  spec.add_runtime_dependency "faraday", "~> 0.13.1"

  spec.add_development_dependency 'bundler', '~> 1.15', '>= 1.15.4'
  spec.add_development_dependency 'rake', '~> 12.2', '>= 12.2.1'
end
