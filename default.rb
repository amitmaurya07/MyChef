#
# Cookbook:: mytomcatcookbook
# Recipe:: default
#
# Copyright:: 2022, The Authors, All Rights Reserved.

include_recipe 'mytomcatcookbook::adduser'
include_recipe 'mytomcatcookbook::installjava'
include_recipe 'mytomcatcookbook::download'
include_recipe 'mytomcatcookbook::permissions'
include_recipe 'mytomcatcookbook::ConfiguringAdminUsers'
include_recipe 'mytomcatcookbook::Starttomcatservice'
include_recipe 'mytomcatcookbook::Starttomcat'
include_recipe 'mytomcatcookbook::deployjavaapp'