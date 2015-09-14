#hashes - associative arrays
 ha = {'one'=>1,'two'=>2}
p ha.length #2
p ha['one'] #1

#better way to write hashes using symbols :
ha = {one: 1, two: 2}

p ha.length #2
p ha[:one] #1
p ha[:three] #nil
ha[:three] =4
p ha[:three] #3

#ruby remembers order of hash....Strange

#word counter program
def get_word(word)
  #pattern [\w']+ matches words and single quotes.  Scan returns array based on the pattern given
  words_arr = word.downcase.scan(/[\w']+/)
  words_count ={}
  words_arr.each do |wrd|
      if words_count.has_key?(wrd)
        words_count[wrd] +=1
      else
        words_count[wrd] =1
      end
  end
  words_count
end

#A Cleaner implementation
def get_word1 (word)
  words_count = Hash.new(0) #defualt value
  word.downcase.scan(/[\w']+/).each do |wrd|
    words_count[wrd] +=1
  end
  words_count
end



p get_word("hello hello you you you hello hello how are you I am fine really fine fine really")
p word_count= get_word1("hello hello you you you hello hello how are you I am fine really fine fine really")

p word_count.class

sorted_array = word_count.sort_by {|word, count| -count}
p sorted_array
p sorted_array.class # Array
p sorted_array.last(2)


#blocks are much like anonymous functions
sorted_array.first(3).each do|k,v|
  puts "#{k}: #{v}"
end

#same thing in one line
puts sorted_array.first(3).each {|k,v| "#{k}: #{v}"}

