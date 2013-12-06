# Encoding: utf-8

require 'spec_helper'

describe 'yum-repoforge::default' do
  context 'yum-repoforge::default uses default attributes' do
    let(:chef_run) { ChefSpec::Runner.new(:step_into => ['yum_repository']).converge(described_recipe) }

    it 'creates yum_repository[rpmforge]' do
      expect(chef_run).to create_yum_repository('rpmforge')
    end

    it 'creates yum_repository[rpmforge-extras]' do
      expect(chef_run).to create_yum_repository('rpmforge-extras')
    end

    it 'creates yum_repository[rpmforge-testing]' do
      expect(chef_run).to create_yum_repository('rpmforge-testing')
    end

    it 'steps into yum_repository and creates template[/etc/yum.repos.d/rpmforge.repo]' do
      expect(chef_run).to render_file('/etc/yum.repos.d/rpmforge.repo')
    end

    it 'steps into yum_repository and creates file template[/etc/yum.repos.d/rpmforge-extras.repo]' do
      expect(chef_run).to render_file('/etc/yum.repos.d/rpmforge-extras.repo')
    end

    it 'steps into yum_repository and creates file template[/etc/yum.repos.d/rpmforge-testing.repo]' do
      expect(chef_run).to render_file('/etc/yum.repos.d/rpmforge-testing.repo')
    end

  end
end
