#
# Cookbook Name:: localusers
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute

# For each item in our data bag do some thing.. :users(data bag that we are searching), 
# define attribute and value of attribute we are searching "*:*" all users and values.. we an narrow down like "comment:admin*" for admin users and rest
# for each item that is returned.. put all the values returned by json data bag in side our data object (named data) 

search(:users, "*:*").each do |data|
# here user is chef's user resource, because id has to be unique we assigned username to id, becasue that must be unique as well
	user data["id"] do
		comment data["comment"]
		uid data["uid"]
		gid data["gid"]
		home data["home"]
		shell data["shell"]
		password data["password"]
	end
end
include_recipe "localusers::groups" 
