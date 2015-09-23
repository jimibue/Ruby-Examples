#Basic Object is Base Class of RUBY
p Object.superclass       #  BasicObject
p BasicObject.superclass  # "nil"

class Animal
  attr_accessor :age, :weight
  def initialize(age, weight)
    @age = age
    @weight = weight
  end
  def details
    "age: #{@age} weight:#{@weight}"
  end
end

class Dog < Animal
  def initialize(age, weight, name)
    super(age, weight)
    @name = name
  end
  def details
    "I am #{@name} and I am " + super
  end
end

d = Dog.new(21,100,"grant")
p d.details # "I am grant and I am age: 21 weight:100"

