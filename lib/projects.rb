class Project
  attr_accesor :name, :id, :volunteer_id

  def initialize(attributes)
    @name = attributes.fetch(:name, nil)
    @id = attributes.fetch(:id, nil)
    @volunteer_id = attributes.fetch(:volunteer_id, nil)
  end

  def self.all
    returned_projects = DB.exec('SELECT * FROM projects;')
projects = []
returned_projects.each() do |author|
  name = project.fetch('name')
  id = project.fetch('id').to_i
  projects.push(Project.new({:name => name, :id => id}))
  end
  returned_projects
end


  def self.search(v)

  end

  def method_name

  end

end
