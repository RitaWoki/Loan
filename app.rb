require('sinatra')
require('sinatra/reloader')
require('./lib/loans_calculator')
also_reload('lib/**/*.rb')


get('/') do
  erb(:index)
end


get('/loan') do
  erb(:lend_form)
end

get('/borrow') do
  erb(:borrow_form)
end

post('/loan') do
  @name = params.fetch('name')
  @amount = params.fetch('amount').to_i()
  @loan_apply = Loan.new(@name, @amount).loans_calculator()
  loans = Loan.new(@name, @loan_apply)
  loans.save()
  erb(:list_full)
end

post('/borrow') do
  @name = params.fetch('name')
  @amount = params.fetch('amount').to_i()
  @loan_apply = Loan.new(@name, @amount).loans_calculator()
  loans = Loan.new(@name, @loan_apply)
  loans.save()
  erb(:list_debt)
end
