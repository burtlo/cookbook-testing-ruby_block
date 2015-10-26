require 'spec_helper'
require './libraries/add_rbenv_to_path'

describe 'add_rbenv_to_path' do

  let(:rbenv_root) { '/rbenv_root'}

  it 'updates the path with the rbenv root provided' do
    add_rbenv_to_path(rbenv_root)
    expect(ENV['PATH']).to include('/rbenv_root/shims')
    expect(ENV['PATH']).to include('/rbenv_root/bin')
  end

  it 'maintains the existing paths' do
    before_path = ENV['PATH']
    add_rbenv_to_path(rbenv_root)
    expect(ENV['PATH']).to include(before_path)
  end


end
