#singleton methods belong to a single object rather than to a class
class Animal
  def initialize(noise)
    @noise = noise
  end

  def speak
    puts @noise
  end
end

dog = Animal.new('bark')
parrot = Animal.new('chirp')

##only parrots can say words so we'll have it get its own singleton method
HUNGRY = true
def parrot.talk
  if HUNGRY
  then
     puts "Polly want a cracker"
  else
    speak
  end
end

parrot.talk #Polly want a cracker

#check to see if a singleton method exist
p parrot.singleton_methods
if parrot.singleton_methods.include?(:talk)
then
  puts "yes I have"
  parrot.talk
else
  puts "don't have"
end

##singleton classes is a class that defines a single object
obj = Object.new

##anonymous class
class<<obj
  def a_method
    puts "yo!"
  end
end

obj.a_method()
