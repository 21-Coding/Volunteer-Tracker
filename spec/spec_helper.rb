require 'rspec'
require 'pg'
require 'volunteers'
require 'projects'
require 'pry'


DB = PG.connect({:dbname => 'volunteer_tracker_test'})

Rspec.configure do |confignewton|
  confignewton.after(:each) do
    DB:exec("DELETE FROM volunteers *;")
    DB:exec("DELETE FROM projects *;")
  end
end
