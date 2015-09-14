
class BookInStock

  #shortcut for accessor methods using symbols :sym
  #symbols are a convenient way of referencing a name
  #note that accessor methods do not create variables
  #but create accessor method
  attr_reader :isbn #writable attr
  attr_accessor :price #writable and readable

  def initialize(isbn,price)
    @isbn = isbn
    @price = Float(price) #simple validation
  end

  #To string method
  def to_s
    puts"ISBN: #{@isbn} PRICE: #{@price}"
  end

  #example of a 'virtual attribute', much like an attribute in c#
  #notice that we don't have a seperate variable for price_in_cents
  #instead we calculate it with price.
  def price_in_cents
    Integer(price*100+ 0.5)
  end

  #here we can change the value of price
  def price_in_cents=(cents)
    @price = (cents/100.0)
  end
end

#the difference between puts and p

# r = BookInStock.new('34', 3.43)
# puts r.to_s
# p r.isbn
# r.price = 2.33
# puts r.to_s
# r.price_in_cents=101
# puts r.to_s
