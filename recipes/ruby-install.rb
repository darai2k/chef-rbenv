#
# Cookbook Name:: rbenv
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

bash "initialize" do
  code ". /etc/profile.d/rbenv.sh"
end

log "install ruby 2.0.0-p247"

bash "ruby install" do
  not_if "rbenv versions | grep '2.0.0-p247'"
  code "rbenv install 2.0.0-p247"
end

bash "rbenv global" do
  code "rbenv global 2.0.0-p247"
end
