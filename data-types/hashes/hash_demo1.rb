#keys and values can be anything, put usually keys will be symbols
hash1 = {
    [1,2,3] => "bob",
    "g" =>{"inner"=>"hash"},
    1 => 4,
    :k => "is a symbol"
}

puts hash1[[1,2,3]] #bob

#iterating through a hash
hash1.each {|k,v| puts "#{k} #{v}"}
puts "each_key"
hash1.each_key {|k| puts "#{k}"}
puts "each_value"
hash1.each_value {|v| puts "#{v}"}
puts "each_pair"
hash1.each_pair {|p| puts "#{p}"}

hash2 =  {
  john: 21,
  johna: 11,
  johns: 31

}
legal = hash2.select {|k,v| v>=21}
legal.each_key { | name| puts name}

#hash of hashes
hoh ={
    utah: {capital: "SLC", population: 12345},
    a: {capital: "ALC", population: 12}
}
hoh[:nevada] = {capital: "Carson", population: 22345}

p hoh[:utah][:capital]

#sort by ket
x = hoh.sort_by {|k,v| k}
p x
p x.class

#sort by the innerhash value
x = hoh.sort_by {|k,v| -v[:population]}
p x
p x.class

