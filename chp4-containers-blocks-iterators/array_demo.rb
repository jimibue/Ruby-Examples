#arrays in ruby can hold objects of different types
#they are also dynamcally sized
a = [1,"two",3.2]
puts a.class #Array
puts a.length #3
puts a[3] #nil


#use new to create array
b = Array.new
p b.class # Array
b[0] = "yo"
p b[0] #"yo"‰


#index with a negative number and it starts at end
a = [ 1, 3, 5, 7, 9 ]
p a[-1] # => 9
p a[-2] # => 7
p a[-99] # => nil

#index arrays with pairs of number [start, count] returns new array
a = [2,3,4,5]
c = a[1,2]
p c #[3,4]
p a #[2,3,4,5] notice a doesn't change
d= a[-2, 2]
p d #[4,5]

#index using ranges
a = [2,3,4,5]
c = a[2..4]
p c #[4,5]

c = a[0..0]
p c #[2]

#from page 61 programming ruby 4th edition

a = [ 1, 3, 5, 7, 9 ]#=>[1,3,5,7,9]
a[2, 2] = 'cat'#=> [1, 3, "cat", 9]
a[2, 0] = 'dog'#=> [1, 3, "dog", "cat", 9]
a[1,1]=[9,8, 7]  #=>[1,9,8,7,"dog","cat",9]
a[0..3] = []#=> ["dog", "cat", 9]
a[5..6] = 99, 98#=> ["dog", "cat", 9, nil, nil, 99, 98]

#stack FILO(push and pop)
stack =[]
stack.push 1
stack.push 2
stack.push 3

p stack.pop #3
p stack.pop #2
p stack.pop #1

#QUEUE FIFO
queue = []
queue.push 1
queue.push 2
queue.push 3

queue.shift #1
queue.shift #2
queue.shift #3



