#can declare default values in ruby
def greet(name="John Doe")
  p "Hello #{name}"
end

greet "james" #"Hello james"
greet #"Hello John Doe"

#unknow args length -splat
def addNums(first, second, *nums)
  sum = first + second
  p nums.inject(sum) {|sum,x| sum+x}

end

addNums(2,3) #5
addNums(2,3,4,5) #14

#Procs
class TaxCalculator
  def initialize(name,&prok)
    @name, @prok = name, prok
  end

  def get_tax(amt)
    p "#{@name} tax on #{amt} is #{@prok.call(amt)}"
  end
end

sale = TaxCalculator.new("sales") {|amt| (amt * 0.07).round(2)}
income = TaxCalculator.new("sales") {|amt| (amt * 0.27).round(2)}

sale.get_tax(200)
sale.get_tax(2.00)
income.get_tax(20_000)

#returning multiple parameters
def fib_up_to(num)
  x,y, =1,1
  while x+y < num
    tmp,x = x,y
   # x = y
    y = y+tmp
  end
  return x,y
end

f,s = fib_up_to(5)
p f
p s