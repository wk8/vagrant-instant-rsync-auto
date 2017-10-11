source 'https://rubygems.org'

# Specify your gem's dependencies in vagrant-instant-rsync-auto.gemspec
gemspec

group :development do
  gem 'vagrant', git: 'https://github.com/mitchellh/vagrant.git', tag: 'v1.8.1'
end

group :plugins do
  gem 'vagrant-instant-rsync-auto', path: '.'
end

# Listen will be polling for changes. Learn more at https://github.com/guard/listen#listen-adapters.
# rb-fsevent > 0.9.4 no longer supports OS X 10.6 through 10.8
require 'rbconfig'
if RbConfig::CONFIG['target_os'] =~ /darwin(1[0-3])/i
  gem 'rb-fsevent', '<= 0.9.4'
end
