#basic blocks
[1,2,3].each {|x| print "#{x} "}
puts

[1,2,3].each do|x|
  print "#{x} "
end
puts

#Procs basics
pr = Proc.new {|x| print "#{x*2} "}
[1,2,3].each(&pr)
puts

#Lambda basics
lam = lambda {|x| print "#{x*2} "}
[1,2,3].each(&lam)
puts

#differnces between the three
#-procs are objects and blocks are not
#-Only one block can appear as an argument

#-Procs and lambdas are both Proc objects
#-Lambdas check the number of arguments, procs don't
#-Treat return differently
#-lambdas return inside procs(handing controll back to the calling method) return outside (where it was defined)




#lambda syntax
x = [1,2,3].map {|num| num * num}
p x


do_crazy_stuff = lambda do |num|
  if num %2 ==0
    num +=1
  else
    num*=2
  end
end
do_crazy_stuff1 = ->(num) do
  if num %2 ==0
    num +=1
  else
    num*=2
  end
end
x = [1,2,3,4,5].map(&do_crazy_stuff)
p x

x = [1,2,3,4,5].map(&do_crazy_stuff1)
p x


#DRY
#method that returns a lambda
def multiply_by(factor)
  ->(n){factor*n}
end
doubler = multiply_by(2)
puts doubler.(3) #6

tripler = multiply_by(3)
puts tripler.(3) #9

#Prediacte -returns a boolean
#predicates as filters (deafualt is true in the case)
def get_message(message, filter = ->(str){true})
  messages = []
  messages << message if filter.(message)
  messages
end


x = get_message("hello", ->(str){str.length>4})

puts x

x = get_message("no", ->(str){str.length>4})

puts "#{x} filtered!"


class Array
  def each_random
    shuffle.each do |el|
      yield el
    end
  end
end

[1,2,3,4,5].each_random {|item| print "#{item} "}