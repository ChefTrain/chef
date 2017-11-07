#
# Cookbook:: apache
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

#install package

node.default["apache"]["indexfile"] = "index2.html"

package 'httpd'

#Start the service and make it persistent
service "httpd" do
  action [ :enable, :start ]
end

#Set up a dummy index.html
cookbook_file "/var/www/html/index.html" do
  source node["apache"]["indexfile"]
  mode "0644"
end
