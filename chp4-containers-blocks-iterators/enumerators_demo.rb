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