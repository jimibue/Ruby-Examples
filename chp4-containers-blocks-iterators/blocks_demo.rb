#sum using block
sum = 0
(1..10).each do |num|
  sum +=num
end
p sum #55

sum = 0
[1,2,3,4,5,6,7,8,9,10].each {|num| sum+=num}
p sum #55

##scope issues with block##
change = 'og'
[1].each {|num| change = "changed"} #variable is changed
p change #'changed'

##|num, change| change is a new variable and will not affect the original
change = 'og'
[1].each {|num, change| change = "changed"}#not changed new variable declared
p change  #'og'

#iterators###

def three_times
  yield
  yield
  yield
end
x = 0
three_times{ puts x+=1 } #1 2 3

#fibinacchi method
def fib(num)
  x1 =1
  x2 =1
  while x1 <num
    yield x1
    temp = x1
    x1 = x2
    x2 = temp + x1
  end
end

fib(200){|x| print "#{x}  "}
puts

## iterators .each .find .collect
[2,3,4,5].each {|x| print "#{x} "}

class Array
  def find
  each do |value|
    return value if yield(value)
  end
  nil
  end
end
x = [1, 3, 5, 7, 9,11].each.find {|v| v*v > 30 }
p x.class

p [1,2,3].collect {|x| x*=10}  #[10,20,30]

##Reading Files -outputs file
file = File.open('test.txt')
file.each do |line|
  puts line
end
puts "*************"
#outputs file with line number
file = File.open('test.txt')
file.each_with_index { |line, index| puts"#{index} #{line} " }

##inject sum a collection
p [1,2,3].inject(10) {|sum, ele| sum+ele} ##16 (10) adds ten
p [1,2,3].inject(0) {|pro, ele| pro*ele}  ## 0 (0) times by 0
p [1,2,3].inject {|sum, ele| sum+ele}     ##6
p [1,2,3].inject {|pro, ele| pro*ele}    ## 6
p [1,2,3].inject (:+)    ## 6 ...shorthand
p [1,2,3].inject (:+)   ## 6 ...shorthand
puts "*************"






