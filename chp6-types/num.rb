#Ruby supports integers and floating-point, rational, and complex numbers.
#ruby like javascript will convert numbers for you

num = 1
p "#{num.class} + #{num}" #"Fixnum + 1"

num = 18937495720394750
p "#{num.class} + #{num}" #"Fixnum + 18937495720394750"

num = 1.1
p "#{num.class} + #{num}" #"Float 1.1

num = 189374957203947501234123411
p "#{num.class} + #{num}" #"Bignum + 189374957203947501234123411"

num = 12_23
p "#{num.class} + #{num}" #""Fixnum + 1223"

num = 1,233,233
p "#{num.class} + #{num}" #Array + [1, 233, 233]"

num = 0xff
p "#{num.class} + #{num}" #"Fixnum + 255"

num = 077
p "#{num.class} + #{num}" #"Fixnum + 63"

num = 0b1001
p "#{num.class} + #{num}" #"Fixnum + 9"

num = 1.2e3
p "#{num.class} + #{num}" #"Float + 1200.0"

num = Rational(1,2)
p "#{num.class} + #{num}" #"Rational + 1/2"

num = 1/2
p "#{num.class} + #{num}" #"Fixnum +0"

#numbers are objects and have methods associated
2.times{|i| p i} # 0 \n 1
2.upto(5){|i| p i} # 2 3 4 5
2.downto(1){|i| p i} # 2 1
2.step(10,2){|i| p i} #2 4 6 8

#note that you can have the index
2.downto(1).with_index {|n,i| p "#{i}: #{n}"} # 2 1



