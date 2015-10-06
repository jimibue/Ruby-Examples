class Ex
  attr_reader :name, :quantity
  def initialize(name, amount)
    @name = name
    @quantity = amount
  end

  #puts calls the to_s method
  def to_s
    "Name: #{@name} Amount:#{@quantity}"
  end

  ##one method for checking for equality and is slow
  def ==(other)
    self.name == other.name && self.quantity == other.quantity
  end

  #hash is faster way to see if objects are equal
  # ^ is the binary xor, this ensures when state of object is changed so is the hash code
  def hash
    self.name.hash ^ self.quantity.hash
  end

  #eq? is usually the same as == and is needed to be defined when == is overwritten
  def eql?(other)
    self == other
  end
end

ex1 = Ex.new('apple',1)
ex2 = Ex.new('apple',1)
arr = [ex1,ex2] ##uniq won't work with out hash and eql? method
p arr.uniq

puts ex1
p ex1
