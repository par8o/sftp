# Makefile for sftp Cookbook.
#
# Author:: Greg Albrecht <gba@onbeep.com>
# Copyright:: Copyright 2014 OnBeep, Inc.
# License:: Apache License, Version 2.0
# Source:: https://github.com/OnBeep/cookbook-sftp
#


.DEFAULT_GOAL := install


test: install kitchen_test

install: rbenv install_bundle bundle_install berks_install vagrant_plugins

update: bundle_update berks_update

destroy: vagrant_destroy kitchen_destroy


install_bundle:
	gem install bundle

bundle_install:
	bundle install

bundle_update:
	bundle update

berks_install:
	berks install

berks_update:
	berks update

vagrant_up:
	vagrant up

vagrant_provision:
	vagrant provision

vagrant_destroy:
	vagrant destroy -f

vagrant_plugins: vagrant_plugin_omnibus vagrant_plugin_berkshelf vagrant_plugin_vbguest

vagrant_plugin_omnibus:
	vagrant plugin install vagrant-omnibus

vagrant_plugin_berkshelf:
	vagrant plugin install --plugin-version 3.0.0.beta5 berkshelf
	vagrant plugin install --plugin-version 1.4.0.dev1 vagrant-berkshelf

vagrant_plugin_vbguest:
	vagrant plugin install vagrant-vbguest

kitchen_converge:
	kitchen converge

kitchen_destroy:
	kitchen destroy

kitchen_setup:
	kitchen setup

kitchen_verify:
	kitchen verify

kitchen_list:
	kitchen list

kitchen_test:
	kitchen test

guard_init:
	guard init

guard:
	guard

foodcritic:
	foodcritic .

## rbenv

rbenv: install_rbenv install_ruby update_rubygems

install_rbenv: ~/.rbenv checkout_rbenv_plugins

~/.rbenv:
	git clone https://github.com/sstephenson/rbenv.git ~/.rbenv

checkout_rbenv_plugins: ~/.rbenv/plugins/ruby-build ~/.rbenv/plugins/rbenv-gem-rehash ~/.rbenv/plugins/rbenv-bundler

~/.rbenv/plugins/ruby-build:
	git clone https://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build

~/.rbenv/plugins/rbenv-gem-rehash:
	git clone https://github.com/sstephenson/rbenv-gem-rehash.git ~/.rbenv/plugins/rbenv-gem-rehash

~/.rbenv/plugins/rbenv-bundler:
	git clone -- git://github.com/carsomyr/rbenv-bundler.git ~/.rbenv/plugins/rbenv-bundler

install_ruby:
	echo N | rbenv install || exit 0

update_rubygems:
	gem update --system

rbenv_readme:
	@echo Now type: 'eval "$$(rbenv init -)"'
	@echo ..and add: 'eval "$$(rbenv init -)"' to you .bashrc
