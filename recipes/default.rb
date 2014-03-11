#
# Cookbook Name:: df_fabric8
# Recipe:: default
#
# Copyright (C) 2014 YOUR_NAME
# 
# All rights reserved - Do Not Redistribute
#
# this will create the directory for the machine.
directory "usr/local/fabric8" do 
	mode "0777"
	recursive true
end

# then it will have to unzip it because RPM's don't exist yet and I haven't figured out ark yet.
execute "unzip_file" do 
	user "vagrant"
	cwd "/vagrant/binaries" 
	command "tar -xzvf fabric8-karaf-1.0.0.redhat-362.tar.gz -C /usr/local/fabric8" 
	action :run
end

# then we will have to point to the include_recipe path for the machine.
include_recipe "df_fabric8::set_fabric8_home"
