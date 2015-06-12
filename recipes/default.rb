#
# Cookbook Name:: test-rundeck-api
# Recipe:: default
#
# Copyright (C) 2015 YOUR_NAME
#
# All rights reserved - Do Not Redistribute
#


include_recipe 'rundeck::default'


rundeck_project "testproject" do
    name "testproject"
    token lazy { node.rundeck.admin.api_token }
end

rundeck_job "testjob" do
    name "testjob"
    scriptfile "/bin/uptime"
    scriptargs ""
    description "simple test job"
    project "testproject"
    token lazy { node.rundeck.admin.api_token }
end
