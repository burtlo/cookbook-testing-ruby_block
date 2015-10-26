#
# Cookbook Name:: rubyblock
# Recipe:: default
#
# Copyright (c) 2015 The Authors, All Rights Reserved.


ruby_block "Add rbenv to PATH" do
  block do
    add_rbenv_to_path(node['rbenv']['root_path'])
    ENV['PATH'] = "#{rbenv_root}/shims:#{rbenv_root}/bin:#{ENV['PATH']}"
  end
end
