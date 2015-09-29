class InputValidator

  #determines if input is an integer
  def is_integer?(num)
    num = Integer(num) rescue nil
    num == nil ? false:true
  end

  #determine what type of input is of type Integer, Float, or String
  def get_basic_type(input)

    (Float(input) && Float(input) %1.0 == 0 ? "integer":"float") rescue "string"
  end
end
