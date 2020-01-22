#
# Cookbook:: test-cookbook
# Recipe:: demo-recipe
#
# Copyright:: 2020, The Authors, All Rights Reserved.



package 'tree' do 
  action :install
end 

file 'myfile2' do 
  content 'this is my file number 2 for the chef training'
  action :create
  owner 'root'
  group 'root'
end 

user "raj" do 
  action :create
end 

group "devops" do 
  action :create 
  members 'raj'
  append true 
end 

