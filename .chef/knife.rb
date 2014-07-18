# See http://docs.opscode.com/config_rb_knife.html for more information on knife configuration options

current_dir = File.dirname(__FILE__)
log_level                :info
log_location             STDOUT
node_name                "jbrignac2"
client_key               "#{current_dir}/jbrignac2.pem"
validation_client_name   "jpborg-validator"
validation_key           "#{current_dir}/jpborg-validator.pem"
chef_server_url          "https://api.opscode.com/organizations/jpborg"
cache_type               'BasicFile'
cache_options( :path => "#{ENV['HOME']}/.chef/checksums" )
cookbook_path            ["#{current_dir}/../cookbooks"]
