#
# Cookbook Name:: rubyblock
# Spec:: default
#
# Copyright (c) 2015 The Authors, All Rights Reserved.

require 'spec_helper'

describe 'rubyblock::default' do
  context 'When all attributes are default, on an unspecified platform' do
    let(:chef_run) do
      runner = ChefSpec::ServerRunner.new
      runner.converge(described_recipe)
    end

    it 'converges successfully' do
      expect { chef_run }.to_not raise_error
    end

    it 'executes the ruby block' do
      expect(chef_run).to run_ruby_block('Add rbenv to PATH')
    end
  end
end
