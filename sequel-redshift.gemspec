# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'sequel/redshift/version'

Gem::Specification.new do |spec|
  spec.name          = "apptweak-sequel-redshift"
  spec.version       = Sequel::Redshift::VERSION
  spec.authors       = ["Sergey Varaksin"]
  spec.email         = ["varaksin86@gmail.com"]
  spec.description   = %q{Amazon Redshift adapter for Sequel}
  spec.summary       = %q{Amazon Redshift adapter for Sequel}
  spec.homepage      = "https://github.com/apptweak/sequel-redshift/tree/main"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = 'https://rubygems.pkg.github.com/'

    spec.metadata['homepage_uri'] = spec.homepage
    spec.metadata['github_repo'] = spec.homepage
    spec.metadata['source_code_uri'] = spec.homepage
  else
    raise 'RubyGems 2.0 or newer is required to protect against ' \
      'public gem pushes.'
  end

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "pg"
  spec.add_dependency "sequel", '~> 5'

  spec.add_development_dependency "bundler", "~> 2"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
end
