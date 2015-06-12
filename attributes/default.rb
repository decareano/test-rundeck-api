default['rundeck']['admin']['encrypted_data_bag']=false
default['rundeck']['node_name']=192.168.17.19
default['rundeck']['hostname']=192.168.17.19
default['rundeck']['url']="http://#{node['rundeck']['hostname']}:#{node['rundeck']['port']}"
default['rundeck']['enable_api_token'] = true
