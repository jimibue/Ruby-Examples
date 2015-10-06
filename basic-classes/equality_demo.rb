class Ex
  def initialize(name, amount)
    @name = name
    @quantity = amount
  end

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