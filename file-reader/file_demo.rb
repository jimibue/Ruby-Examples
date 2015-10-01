require 'set'
class FileDemo
  attr_reader :all_strings, :all_downcase_strings, :all_unique_strings,
              :punc_free_strings ,:punc_free_unique_strings

  def initialize(file_path)
    @file = file_path

    #get all strings separated by a space
    @all_strings = File.read(@file).split
    @all_downcase_strings = all_strings.collect {|word| word.downcase}
    @punc_free_strings = all_downcase_strings.collect {|word| word.gsub(/[^0-9A-Za-z]/, '')}
    @all_unique_strings = all_downcase_strings.to_set
    @punc_free_unique_strings = punc_free_strings.to_set.sort_by {|word| word}
    @word_count = Hash.new
  end

  def populate_hash(word_list)
    temp_hash = Hash.new
    word_list.each do |word|
      if temp_hash.has_key?(word)
        temp_hash[word]+=1
      else
        temp_hash[word]=1
      end
    end
    temp_hash

  end

end


fd = FileDemo.new('test.txt')

# fd.all_unique_strings.each {|word| print "#{word} "}
puts
# fd.punc_free_unique_strings.each {|word| print "#{word} "}
puts

h = fd.populate_hash(fd.punc_free_strings)


arr = h.sort {|a,b| b[1]<=>a[1]}

puts "#{arr[0]} "

h.keys.sort[0..10].each {|key,value| puts "#{key}: #{h[key]}"}
