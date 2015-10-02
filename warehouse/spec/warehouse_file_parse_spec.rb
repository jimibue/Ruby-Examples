require 'rspec'
require_relative 'spec_helper'
require_relative '../warehouse_file_parser'

describe 'WarehouseFileParser' do

 describe 'Basic Tests' do
   before do
     @parser = WarehouseFileParser.new('data.txt')
   end

   describe 'Intialize' do
     it 'should exist' do
       expect(@parser).not_to be(nil)
     end
     it 'should be type WarehouseFileParser' do
       expect(@parser.class).to be(WarehouseFileParser)
     end
     it 'should have the file object' do
       expect(@parser.file.class).to be(File)
     end

     it 'should gracefully catch a file not found exception' do
       @error = WarehouseFileParser.new('does_not_exist.txt')
       expect(@error.file).to eq("Could not open file")
     end

   end

 end
end