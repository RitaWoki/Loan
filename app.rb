require('sinatra')
require('sinatra/reloader')
# require('./lib/loans_calculator')
also_reload('lib/**/*.rb')


get('/') do
  erb(:index)
end
