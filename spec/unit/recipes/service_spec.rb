#
# Cookbook:: httpd
# Spec:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

require 'spec_helper'

describe 'httpd::service' do
  context 'When all attributes are default, on an unspecified platform' do
    let(:chef_run) do
      runner = ChefSpec::ServerRunner.new
      runner.converge(described_recipe)
    end

    it 'converges successfully' do
      expect { chef_run }.to_not raise_error
    end

    it 'enables the httpd service' do
      expect(chef_run).to enable_service(node['httpd']['service_name'])
    end

    it 'starts the httpd service' do
      expect(chef_run).to start_service(node['httpd']['service_name'])
    end

  end
end
