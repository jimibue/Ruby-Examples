##enumerators- provide a way to have an iterator object in Ruby
arr = [1,2,"string"]
hash1 = {name: 'james', age: '21'}

enum_arr = arr.to_enum
enum_hash = hash1.to_enum

puts enum_arr.next #1
puts enum_arr.next #2
puts enum_arr.next #'string'
#puts enum_arr.next #ERROR

p enum_hash.next #[:name, 'james']
puts enum_hash.next #age /n 21  (21 printed on a newline)

puts "*************"
enum_arr = arr.to_enum
enum_hash = hash1.to_enum

#note that loop ends when it runs out of values
loop do
  puts "#{enum_arr.next} #{enum_hash.next}"
end
# 1 [:name, "james"]
# 2 [:age, "21"]

#enumerators are object. enumerable defines each_with_index
result = []
[1,2,3].each_with_index {|value, index| result << [value, index]}
p result # [[1, 0], [2, 1], [3, 2]]

result = []
"Jim".each_char.with_index{|char, index| result<< [index, char]}
p result #[[0, "J"], [1, "i"], [2, "m"]]

#lazy enumerators and working with infinite sequences
def Integer.all
  Enumerator.new do |yielder, n: 0|
    loop { yielder.yield(n += 1) }
  end.lazy
end
p Integer.all.first(10)

#kind of similiar to .map() in javascript
#Without the lazy enumerator, the call to select would never return,

def pal?(str)
  s = str.to_s
  s == s.reverse
end
p Integer.all
      .select {|num| num % 2 ==0 && pal?(num)}
      .first(10)

#same thing with procs
pal_proc = Proc.new do |s|
  s = s.to_s
  s == s.reverse
end
#another way to delcare a proc
multiple_of_5 = ->n { (n % 5).zero? }

puts multiple_of_5.class #Proc

p Integer.all
  .select(&pal_proc)
  .select(&multiple_of_5)
  .first(10)


##Other uses  BLOCKS FOR TRANSACTIONS PAGE 63


