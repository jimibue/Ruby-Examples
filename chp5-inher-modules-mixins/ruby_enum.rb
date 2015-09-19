require 'prime'
class RubyEnum

  #returns first n elements
  def first_n_elements(enum,n)
    enum.first(n);
  end

  def any_odd(enum)
    # enum.each do |n|
    #   # return true if n%2 !=0
    #   return true if n.odd?
    # end
    # false
    enum.any? {|n| n.odd?}
    # enum.any?(&:odd?) does the same thing different syntax
  end

  def all_odd (enum)
    enum.all?(&:odd?)
  end
   def none_odd(enum)
     enum.none?(&:odd?)
   end

  def square_each_element(enum)
    enum.map{|n| n**2}
    #enum.collect{|n| n**2} collect does the same thing
  end

  def find_evens(enum)
    enum.select{|n| n%2 ==0}
  end

  def reject_evens(enum)
    enum.reject{|n| n%2 ==0}
  end

  def first_even(enum)
    enum.detect(&:even?)
    #enum.find(&:even?) same thing
  end

  def square_pairs(enum)
    enum.inject([]) do |square_pairs, n|
      square_pairs <<[n,n**2]
    end
  end

  def valid_email_addresses(addresses)
    valid_email_regex = /[\w+\-.]+@[a-z\d\-.]+\.[a-z]+/i
    # valid_emails = []
    # addresses.each do |address|
    #   valid_emails<< address if address =~valid_email_regex
    # end
    # valid_emails
    addresses.grep(valid_email_regex)
  end

  def n_primes(n)
    natural_numbers.select(&:prime?).first(n)
  end

  def natural_numbers
    (1...Float::INFINITY).lazy
  end


end

re = RubyEnum.new
arr =[1,2,3,4,5]

p re.all_odd(arr)  #false
p re.none_odd(arr)  #false
p re.any_odd(arr)  #true
p re.square_each_element(arr)  #1,4,9,16,25
p re.find_evens(arr)  # [2,4]
p re.reject_evens(arr)  #[1,3,5]
p re.first_even(arr)  #2
p re.square_pairs(arr)  #[[1, 1], [2, 4], [3, 9], [4, 16], [5, 25]]
p re.n_primes(8)

emails = []