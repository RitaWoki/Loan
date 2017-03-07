class Loan
  @@loans = []
  define_method(:initialize) do |name, amount|
    @name = name
    @amount = amount
  end

  define_method(:name) do
    @name
  end

  define_singleton_method(:all) do
    @@loans
  end

  define_method(:amount) do
    @amount
  end

  define_singleton_method(:clear) do
    @@loans = []
  end

  define_method(:save) do
    @@loans.push(self)
  end

  define_method(:loans_calculator) do
    # calculate interest of 10%
    interest = 10 #percent
    calc_amount = @amount + ((@amount.*10)./100)

  end
end
