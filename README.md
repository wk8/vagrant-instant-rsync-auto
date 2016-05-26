# vagrant-instant-rsync-auto

An rsync watcher for Vagrant 1.5.1+ that's much faster than the native
`vagrant rsync-auto` command; especially if you have a decent amount of
logic in your Vagrantfile and/or plugins that makes the parsing and loading
of it a bit slow.

## Installation

To get started, you need to have Vagrant 1.5.1+ installed on your Linux, Mac, or
Windows host machine. To install the plugin, use the following command.

```bash
vagrant plugin install vagrant-instant-rsync-auto
```

## Usage

This plugin should behave exactly the same as `vagrant rsync-auto`, and in
particular it uses the same configuration. So simply run
```bash
vagrant instant-rsync-auto
```
_in lieu_ of your usual `vagrant rsync-auto`, and you should be good to go!

Hopefully this will make it into Vagrant proper, there's a pull request opened
for that: https://github.com/mitchellh/vagrant/pull/7332

## Troubleshooting

This plugin requires rsync 3.1.0+ on both the host and the guest; you can see
your rsync version with
```bash
rsync --version
```

(On Mac OS X, rsync can be upgraded with `brew install homebrew/dupes/rsync`)
