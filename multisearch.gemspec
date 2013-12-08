# -*- encoding: utf-8 -*-
require File.expand_path('../lib/multisearch/version', __FILE__)

Gem::Specification.new do |spec|
  spec.name          = "multisearch"
  spec.version       = Multisearch::VERSION
  spec.authors       = ["adamdharrington"]
  spec.email         = ["adamdharrington@gmail.com"]
  spec.description   = %q{Search multiple columns of a database, returning a hash of non-empty columns}
  spec.summary       = %q{This gem is used to query ActiveRecord on a particular model using a single search term across multiple specified columns. The gem returns a hash of key-values including the first column given plus any other non-empty columns}
  spec.homepage      = "https://github.com/adamdharrington"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]
  spec.add_dependency "activerecord", ">= 3.0.0"

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
	spec.add_development_dependency "sqlite3"
end
