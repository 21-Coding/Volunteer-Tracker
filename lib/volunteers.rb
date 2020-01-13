class Volunteer
  attr_accessor :name, :id

  def initialize(attributes)
    @name = attributes.fetch(:name, nil)
    @id = attributes.fetch(:id, nil)
  end

  def self.all
    returned_returned_volunteers = DB.exec('SELECT * FROM returned_volunteers;')
    returned_volunteers = []
    returned_returned_volunteers.each() do |volunteer|
      name = volunteer.fetch('name')
      id = volunteer.fetch('id').to_i
      returned_volunteers.push(Volunteer.new({:name => name, :id => id}))
    end
    returned_volunteers
  end

  def save
  result = DB.exec("INSERT INTO volunteers (name) VALUES ('#{@name}') RETURNING id;")
  @id = result.first().fetch("id").to_i
end

def ==(volunteer_to_compare)
   self.name() == volunteer_to_compare.name()
 end

 def self.clear
    DB.exec("DELETE FROM volunteers *;")
  end

  def self.find(id)
    volunteer = DB.exec("SELECT * FROM volunteers WHERE id = #{id};").first
    name = volunteer.fetch("name")
    id = volunteer.fetch("id").to_i
    Volunteer.new({:name => name, :id => id})
  end

  def update(name)
   @name = name
   DB.exec("UPDATE volunteers SET name = '#{@name}' WHERE id = #{@id}")
 end
end
