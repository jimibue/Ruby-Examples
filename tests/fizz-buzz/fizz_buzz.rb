class FizzBuzz


  def print(num)
    return "FizzBuzz" if num %3 ==0 && num%5 ==0
    return "Fizz" if num %3 ==0
    return "Buzz" if num %5 ==0
    num
  end
end