# strings - sequence of chars
puts 'escape\'s'
puts 'escape\'s'

puts "string "*3 #string string string
puts "string "+" string" #string string
puts "10"<<97  #10a
puts "a"<=>"b" #-1
puts "str"=="str"
puts "str"==="str"
puts "asdfstr"=~/str/ #4 position where match starts
str = "abc"
puts str.capitalize
puts str
puts str.capitalize! #change value of str
puts str

puts str.casecmp("abc")#0 ignore case while comparing these are equal
str = ("\nabc")
puts str.chop #ab removes last char
 #ab removes last char

str = "abc hello how are abc"
puts str.count("abc")

str = "abc"
str1 = "abc"
p str.eql?(str1) #true