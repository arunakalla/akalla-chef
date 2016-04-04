# See http://docs.chef.io/config_rb_knife.html for more information on knife configuration options

current_dir = File.dirname(__FILE__)
log_level                :info
log_location             STDOUT
node_name                "arunakalla"
client_key               "#{current_dir}/arunakalla.pem"
validation_client_name   "akalla-validator"
validation_key           "#{current_dir}/akalla-validator.pem"
chef_server_url          "https://api.chef.io/organizations/akalla"
cookbook_path            ["#{current_dir}/../cookbooks"]
