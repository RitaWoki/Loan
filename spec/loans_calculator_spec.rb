require('rspec')
require('loans_calculator')

describe('Loan') do
  before() do
      Loan.clear()
    end
  describe('#loans_calculator') do
    it ("gets users and display loan applied for") do
      test_loan = Loan.new("Ann", 500)
      expect((test_loan).loans_calculator()).to(eq(550))
    end
  end
  describe('#name') do
    it ("gets the name") do
      test_loan = Loan.new("Alice", 500)
      expect((test_loan).name()).to(eq("Alice"))
    end
  end

  describe('#save') do
    it ("gets the name") do
      test_loan = Loan.new("Alice", 500)
      test_loan.save()
      expect(Loan.all()).to(eq([test_loan]))
    end
  end

  describe('.all') do
    it ("gets al the loans") do
      expect(Loan.all()).to(eq([]))
    end
  end
end
