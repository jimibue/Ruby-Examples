require 'set'
require_relative 'string_cleaner'


#writing to a file
file = File.new('./test.txt','w')
file.puts("hello world")
arr = ["this is line two","this is line #as #SD $#@ GF$ atta did three's me;s \"sdf\" "];
arr.each {|line| file.puts(line)}
file.close

#reading from a file
lines = []
file = File.open('./yankee.txt',"r")
while (line = file.gets)
  lines << line
end
file.close

#exception handling
# begin
#   lines = []
#   file = File.open('./dont_exist.txt',"r")
#   while (line = file.gets)
#     lines << line
#   end
#   file.close
# rescue => error
#   puts error
# end

def pal?(str)
  s = str.to_s
  s == s.reverse
end

def is_legal_word(str)
  str[/['a-zA-Z]*/] == str
end




#get all the words
words = File.read('yankee.txt').split
lowercase_words = words.collect {|word| word.downcase}



word_set = lowercase_words.select.to_set

words_length_2_set =  word_set.select {|str| str.length ==3}
legal_words_length_2_set = words_length_2_set.select { |str| is_legal_word(str)}
illegal_words_length_2_set = words_length_2_set.select { |str| !is_legal_word(str)}

sorted_set = legal_words_length_2_set.sort_by {|word| word}





puts
words_length_2_set.each {|str| print (str + " ")}
puts
puts "..............."
legal_words_length_2_set.each {|str| print(str + " ")}
puts
puts "..............."

sorted_set.each {|str| print(str + " ")}
puts
puts "..............."

puts "..............."
puts "..............."



@sc = StringCleaner.new
sc = StringCleaner.new

def get_str(str)
  @sc.remove_punctuation(str)
end
illegal_words_length_2_set.each {|str| print(str + " ")}
illegal_words_length_2_set.collect! {|str| get_str(str)}
illegal_words_length_2_set.collect! {|str| sc.remove_punctuation(str)}

puts "..............."
puts "..............."

illegal_words_length_2_set.each {|str| print(str + " ")}