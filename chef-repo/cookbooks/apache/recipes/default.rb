#
# Cookbook:: apache
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

#install package
package 'httpd'

#Start the service and make it persistent
service "httpd" do
  action [ :enable, :start ]
end

#Set up a dummy index.html
cookbook_file "/var/www/html/index.html" do
  source "index.html"
  mode "0644"
end
