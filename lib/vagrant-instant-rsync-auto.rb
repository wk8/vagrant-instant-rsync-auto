# This file is required because Vagrant's plugin system expects
# an eponymous ruby file matching the rubygem.
#
# So this gem is called 'vagrant-instant-rsync-auto' and thus vagrant tries
# to require 'vagrant-instant-rsync-auto'

require 'vagrant-instant-rsync-auto/plugin'

module VagrantPlugins
  module InstantRsyncAuto
  end
end
