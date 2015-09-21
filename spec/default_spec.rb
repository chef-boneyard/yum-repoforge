require 'spec_helper'

describe 'yum-repoforge::default' do
  context 'yum-repoforge::default uses default attributes' do
    let(:chef_run) do
      ChefSpec::ServerRunner.new do |node|
        node.set['yum']['rpmforge']['managed'] = true
        node.set['yum']['rpmforge-extras']['managed'] = true
        node.set['yum']['rpmforge-testing']['managed'] = true
      end.converge(described_recipe)
    end

    %w(
      rpmforge
      rpmforge-extras
      rpmforge-testing
    ).each do |repo|
      it "creates yum_repository[#{repo}}]" do
        expect(chef_run).to create_yum_repository(repo)
      end
    end
  end
end
