# See http://docs.opscode.com/config_rb_knife.html for more information on knife configuration options

current_dir = File.dirname(__FILE__)
log_level                :info
log_location             STDOUT
node_name                "paul-jean"
client_key               "#{current_dir}/paul-jean.pem"
validation_client_name   "rule146-validator"
validation_key           "#{current_dir}/rule146-validator.pem"
chef_server_url          "https://api.opscode.com/organizations/rule146"
cache_type               'BasicFile'
cache_options( :path => "#{ENV['HOME']}/.chef/checksums" )
cookbook_path            ["#{current_dir}/../cookbooks"]
