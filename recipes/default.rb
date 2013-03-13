#
# Cookbook Name:: plesk
# Recipe:: default
#
# Copyright 2012, Besol Soluciones S.L.
# All rights reserved.

bash "Donwload Plesk installer" do
  code "cd /tmp; wget http://download1.parallels.com/Plesk/PP11/11.0/Ubuntu10/parallels_installer_v3.12.0_build120601.16_os_Ubuntu_10.04_x86_64"
  user 'root'
end

bash "Provide execution permissions to Plesk installer" do
  code "chmod 700 /tmp/parallels_installer_v3.12.0_build120601.16_os_Ubuntu_10.04_x86_64 "
  user 'root'
end

bash "Install Plesk" do
  code "/tmp/parallels_installer_v3.12.0_build120601.16_os_Ubuntu_10.04_x86_64 --select-release-id #{node['plesk']['release_id']} --installation-type Typical 2>&1"
  user "root"
end
