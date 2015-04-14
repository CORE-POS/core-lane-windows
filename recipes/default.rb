#
# Cookbook Name:: core-lane-windows
# Recipe:: default
#
# Copyright 2015, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute

directory "#{node['core-lane']['windows']['dir']}" do
  action :create
end

git "#{node['core-lane']['windows']['dir']}" do
  repository "#{node['core-lane']['windows']['repo']}"
  revision "#{node['core-lane']['windows']['revision']}"
  checkout_branch "#{node['core-lane']['windows']['branch']}"
  action :sync
end

powershell_script "Database Init" do
  mysql_cmd = "#{node['mysql']['windows']['dir']}\\bin\\mysql.exe -u root -p\"#{node['mysql']['server_root_password']}\""
  code <<-EOH
Write-Output "CREATE DATABASE #{node['core-lane']['windows']['opdata']}" | #{mysql_cmd}
Write-Output "CREATE DATABASE #{node['core-lane']['windows']['translog']}" | #{mysql_cmd}
Write-Output "GRANT ALL ON #{node['core-lane']['windows']['opdata']}.* TO '#{node['core-lane']['windows']['db_user']}'@'%' IDENTIFIED BY '#{node['core-lane']['windows']['db_passwd']}'" | #{mysql_cmd}
Write-Output "GRANT ALL ON #{node['core-lane']['windows']['translog']}.* TO '#{node['core-lane']['windows']['db_user']}'@'%' IDENTIFIED BY '#{node['core-lane']['windows']['db_passwd']}'" | #{mysql_cmd}
  EOH
  not_if { ::File.exists?("#{node['core-lane']['windows']['dir']}/pos/is4c-nf/ini.php") }
end

template "#{node['core-lane']['windows']['dir']}/pos/is4c-nf/ini.php" do
  action :create
end

template "#{node['apache']['windows']['conf_dir']}/core-lane.conf".gsub('/', '\\') do
  action :create
  notifies :restart, "service[apache2]", :delayed
end

