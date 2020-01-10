class Project
  attr_accesor :name, :id, :volunteer_id

  def initialize(attributes)
    @name = attributes.fetch(:name, nil)
    @id = attributes.fetch(:id, nil)
    @volunteer_id = attributes.fetch(:volunteer_id, nil)
  end

  def self.all

  end

  def self.search

  end

  def method_name

  end

end
