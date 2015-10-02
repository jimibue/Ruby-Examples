require 'rspec'
require_relative '../main'
require_relative 'spec_helper'

describe 'Parse File' do

  file = File.open('data.txt','r')

  describe 'When parsing the first line' do

    first_line = file.gets.chomp

    it 'should get the first line' do

       expect(first_line).to eq("FoodItem - UPC Code: 0353264991  Shelf life: 2  Name: chestnut puree with vanilla")
    end

    it 'should create array with all words of the first line' do
      arr = first_line.split
      expect(arr).to include("FoodItem","UPC","Code:", "0353264991")
    end

  end

end