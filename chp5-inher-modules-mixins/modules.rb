
#modules are a way of grouping together methods, classes and constants
#they provide a namespaces and help prevent name clashes
#a way of grouping together things that do not belong in a class
#moudles can eliminate the need for inheritance
#modules can't have instance methods but you can include
#a module in a class definition aka a MIXIN

module Debug
  def who_am_i
    return "#{self.class.name} id: #{self.object_id}: #{self.name}"
  end
end

class Class1
  include Debug #note if module is in a seperate file the require keyword most be used instead
  attr_accessor :name
  def initialize(name)
    @name = name;
  end
  end
class Class2
  attr_accessor :name
  include Debug
  def initialize(name)
    @name = name;
  end
end

c1 = Class1.new("C1")
c2 = Class2.new("C2")

p c1.who_am_i
p c2.who_am_i

class Word
  include Comparable
  attr_reader :word
  def initialize (word)
    @word = word
  end

  def to_s
    "#{@word}"
  end
  #must implement this when using comparable
  def <=> (other)
    self.word <=> other.word
  end
end

hello = Word.new('hello')
wow = Word.new('wow')
wsow = Word.new('wsow')

#now we can compare these two objects with < > =

p hello < wow
p hello > wow
p hello == wow

#can also apply the sort method
s_arr = [wow,wsow,hello].sort
puts s_arr