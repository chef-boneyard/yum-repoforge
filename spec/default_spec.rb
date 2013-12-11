require 'spec_helper'

describe 'yum-repoforge::default' do
  context 'yum-repoforge::default uses default attributes' do
    let(:chef_run) { ChefSpec::Runner.new(:step_into => ['yum_repository']).converge(described_recipe) }

    %w{
      rpmforge
      rpmforge-extras
      rpmforge-testing
      }.each do |repo|
      it "creates yum_repository[#{repo}}]" do
        expect(chef_run).to create_yum_repository(repo)
      end

      it "steps into yum_repository and creates template[/etc/yum.repos.d/#{repo}.repo]" do
        expect(chef_run).to render_file("/etc/yum.repos.d/#{repo}.repo")
      end
    end

  end
end
