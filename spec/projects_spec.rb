require 'spec_helper'
require 'rspec'
require 'project'


describe '#Project' do
  describe('#==') do
    it("is the same project if it has the same attributes as another project") do
      project = Project.new({:name => "The Philadelphia Experiment", :id => nil})
      project.save()
      project2 = Project.new({:name => "The Philadelphia Experiment", :id => nil})
      project.save()
      expect(project).to(eq(project2))
    end
  end
end
