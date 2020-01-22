#
# Cookbook:: test-cookbook
# Recipe:: test-recipe
#
# Copyright:: 2020, The Authors, All Rights Reserved.



file 'myfile' do 
  content 'welcome to this new year 2020. It was a good party experience at your home'
  action :create
end 


execute "run a script" do 
  command <<-EOH
  mkdir /saidir 
  touch /saifile
  EOH
end 

 
%w(httpd mariadb-server unzip git vim).each do |p|
  package p do 
    action :install
  end 
end 
