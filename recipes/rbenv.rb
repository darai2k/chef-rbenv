#
# Cookbook Name:: rbenv
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

package "git"

group "rbenv" do
  members "vagrant"
  append true
end

git "/usr/local/rbenv" do
  repository "git://github.com/sstephenson/rbenv.git"
  revision "master"
  user "root"
  group "rbenv"
end

directory "/usr/local/rbenv/plugins" do
  owner "root"
  group "rbenv"
  mode "0755"
end

git "/usr/local/rbenv/plugins/ruby-build" do
  repository "git://github.com/sstephenson/ruby-build.git"
  revision "master"
  user "root"
  group "rbenv"
end

template "/etc/profile.d/rbenv.sh" do
  owner "root"
  group "root"
  mode "0644"
end
