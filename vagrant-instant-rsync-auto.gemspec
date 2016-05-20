# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'vagrant-instant-rsync-auto/version'

Gem::Specification.new do |spec|
  spec.name          = 'vagrant-instant-rsync-auto'
  spec.version       = VagrantPlugins::InstantRsyncAuto::VERSION
  spec.authors       = ['Jean Rouge']
  spec.email         = ['jer329@cornell.edu']
  spec.summary       = %q{A faster alternative to `vagrant rsync-auto`}
  spec.homepage      = 'https://github.com/wk8/vagrant-instant-rsync-auto'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject {|f| f.start_with?('example/files')}
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'pry'
  # Make Vagrant work on Linux for development.
  spec.add_development_dependency 'json', '~> 1.8.1'
end
