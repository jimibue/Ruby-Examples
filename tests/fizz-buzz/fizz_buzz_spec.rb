#FizzBuzz tut from https://www.youtube.com/watch?v=kRFH0U5tbt8
require 'rspec'
require_relative 'spec/spec_helper'
require_relative 'fizz_buzz'


describe 'FizzBuzz' do

  #set up test
  before do
    @fb = FizzBuzz.new
    @number = 15*rand(1...200) +1 #not a multiple of fifteen
  end

  it 'should return Fizz for multiple of three' do

    @fb.print(3*@number).should == 'Fizz'
  end

  it 'should return Fizz for multiple of five' do

    @fb.print(5*@number).should == 'Buzz'
  end

  it 'should return FizzBuzz for multiple of fifteen' do

    @fb.print(15*@number).should == 'FizzBuzz'
  end

  # it 'should return the number as a string for all fizzbuzz number' do
  #   @fb.print(@number).must_equal @number.to_s
  # end
  #
  # it 'should return an Array object when a range is given as a argument' do
  #   @fb.print(1..5).must_be_instance_of Array
  # end
  #
  # it 'should raise an error if the number is negative' do
  #   proc{@fb.print(-2)}.must_raise ArgumentError
  # end
  #
  # it 'should raise an error if the number is 0' do
  #   proc{@fb.print(0)}.must_raise ArgumentError
  # end
  #
  # it 'should raise an error if the number is not a Integer' do
  #   proc{@fb.print(2.5)}.must_raise ArgumentError
  # end
end

