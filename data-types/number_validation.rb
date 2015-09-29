# get input from user and make sure it is a integer.  If user did enter a integer
# an error message will be displayed and user will be ask again for input.

def get_integer
  puts "Enter a Integer please. "
  val = gets.chomp
  typed_val = (Float(val) && Float(val)%1  == 0 ? Integer(val):Float(val)) rescue val
  until typed_val.is_a? Fixnum
    puts "#{typed_val} is not a integer it is of the class #{typed_val.class} "
    puts "please enter a integer "
    val = gets.chomp
    typed_val = (Float(val) && Float(val)%1  == 0 ? Integer(val):Float(val)) rescue val

  end

end

# a more clean solution to getting a integer while still provide
# a detailed error message
def get_integer1
  puts "Enter a integer "
  val = gets.chomp
  Integer(val)
rescue
  typed_val = Float(val) rescue val
  puts "#{typed_val} is not a integer it is of the class #{typed_val.class} "
  get_integer1
end
puts get_integer1

#returns a boolean
def is_positive_integer
  puts "Enter a postive integer "
  val = gets.chomp
  value = Integer(val)
  raise ArgumentError if value < 0
rescue
  puts "#{val} is not a positive integer. "
  is_positive_integer
end
puts is_positive_integer



#determines whether input is float integer or string
def output_type
  puts "enter a value"
  val = gets.chomp
  temp = (Float(val) && Float(val)%1  == 0 ? Integer(val):Float(val)) rescue val
  puts temp.class
end




#another way to keep asking for an int/float
# num = nil
# until num.is_a? Integer
#   puts "Enter a integer "
#   num = Integer(gets.chomp) rescue nil #condensed way to capture exception
#   puts num.class
# end
#
# until num.is_a? Float
#   puts "Enter a Float "
#   num = Float(gets.chomp) rescue nil
# end














