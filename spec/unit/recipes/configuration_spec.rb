
#
# Cookbook:: httpd
# Spec:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

require 'spec_helper'

describe 'httpd::configuration' do
  context 'When all attributes are default, on CentOS' do
    let(:chef_run) do
      runner = ChefSpec::ServerRunner.new(platform: 'centos', version: '6.7')
      runner.converge(described_recipe)
    end

    it 'converges successfully' do
      expect { chef_run }.to_not raise_error
    end

    it 'index.html exists and content is correct' do
      expect(chef_run).to render_file('/var/www/html/index.html').with_content(/Welcome Home/)
    end

  end

  context 'When all attributes are default, on Ubuntu' do
    let(:chef_run) do
      runner = ChefSpec::ServerRunner.new(platform: 'ubuntu', version: '14.04')
      runner.converge(described_recipe)
    end

    it 'converges successfully' do
      expect { chef_run }.to_not raise_error
    end

    it 'index.html exists and content is correct' do
      expect(chef_run).to render_file('/var/www/html/index.html').with_content(/Welcome Home/)
    end

  end
end
