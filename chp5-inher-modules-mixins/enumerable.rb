## finds the letter in the game wheel of fortune rsltne
class FindWheelLetters
  include Enumerable
  def initialize(phrase)
    @phrase = phrase.downcase
  end

  def each
    @phrase.scan(/[rsltne]/) do |letter|
      yield letter
    end
  end
end

letters = FindWheelLetters.new("welcome to the jungle")

p letters.inject(:+)

upcased = letters.collect do |letter|
  letter.upcase
end

p upcased
#return to page 78
