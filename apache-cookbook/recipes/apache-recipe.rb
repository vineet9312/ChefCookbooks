#
# Cookbook:: apache-cookbook
# Recipe:: apache-recipe
#
# Copyright:: 2020, The Authors, All Rights Reserved.


package 'httpd' do 
  action :install
end 


file 'var/www/html/index.html' do 
  content 'i am modifting the content which would be visible only on the node2 machine'
  action :create
end 


service 'httpd' do 
  action [ :enable , :start ]
end 

