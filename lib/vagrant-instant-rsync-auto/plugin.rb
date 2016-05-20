begin
  require 'vagrant'
rescue LoadError
  raise 'The Vagrant instant-rsync-auto plugin must be run within Vagrant.'
end

module VagrantPlugins
  module InstantRsyncAuto
    class Plugin < Vagrant.plugin('2')
      name 'Instant Rsync Auto'
      description 'A vagrant plugin that does the same as `vagrant rsync-auto`, except much faster!'

      command 'instant-rsync-auto' do
        require_relative 'command/instant_rsync_auto'
        Command::RsyncAuto
      end
    end
  end
end
