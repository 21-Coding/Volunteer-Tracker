require('sinatra')
require('sinatra/reloader')
require('./lib/projects')
require('./lib/volunteers')
require('pry')
also_reload('lib/**/*.rb')
require('pg')

DB = PG.connect({:dbname => 'volunteer_tracker'})
