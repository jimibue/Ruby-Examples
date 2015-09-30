require 'rspec'
require_relative 'spec_helper'


describe 'Expectation Matchers' do

  it 'should show equality examples using matchers' do


    x = "James"
    num = 1
    #loose equality
    x == 'James' #true
    num == 1.0 #true
    num == '1.0' #false

    #ways to write a test using loose equality
    expect(num).to eq(1)
    expect(num).to be ==1

    #value equality
    num.eql?(1) #true
    num.eql?(1.0) #false
    x.eql?('james') #true

    expect(num).to eql(1)
    expect(num).to_not eql(1.0)


    #object identity (address) equality
    x.equal?('James') #false
    expect(x).to_not equal('James')

  end

  it 'show truth and truthiness' do

    #helper method shows how statement handle loose truth and false
    def true_or_false(val)
      if val
        true
      else
        false
      end
    end

    #uses the method above and show how if statements handle truthy values
    expect(true_or_false("")).to be true
    expect(true_or_false(nil)).to_not be true

    #these are really not true and false
    expect('string').not_to be true
    expect('nil').not_to be false

    #but are truthy and falsey
    expect(" ").to be_truthy
    expect(nil).to be_falsey

    #way to test for nil
    expect(nil).to be nil

  end

  it 'should show numeric equality' do
    expect(100).to be 100
    expect(100).to be > 99
    expect(100).to be < 101
    expect(100).to be <= 100

    expect(1).to be_between(1,2).inclusive
    expect(1).to be_between(0,2).exclusive

    expect(1001).to be_within(1).of(1000)

    #see if a range covers a value
    expect(1..10).to cover(3)


  end

  it 'should show collection matchers' do
   arr = [1,2,3]
   arr1 = [1,2,3]
   arr2 = [3,2,1]

    expect(arr).to include(2)
    expect(arr).to include(1,2,3)
    expect(arr).to start_with(1)
    expect(arr).to end_with(3)


    expect(arr).to match([1,2,3])
    expect(arr).not_to match([3,2,1,0])
    expect(arr).to contain_exactly(3,2,1)#no array input

    #with strings
    james = "james"

    expect(james).to include('jame','am')
    expect(james).to start_with('j')

    #hash
    hash = {city: 'salt lake', state: 'ut'}
    expect(hash).to include(:city)
    expect(hash).to include(:city,:state)
    expect(hash).to include(:city =>"salt lake")


  end
end