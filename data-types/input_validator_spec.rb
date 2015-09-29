require 'rspec'
require_relative 'spec/spec_helper'
require_relative 'input_validator'

#rspec hierarchy
#spec file
# example group
#   nested group
#     example
#       expectations


describe 'My Validator' do

  before do
    @iv = InputValidator.new
  end

  describe '.is_integer?' do

    context 'when input given is a string'do

      it 'determines if input is an integer' do
       expect(@iv.is_integer?('3')).to eq(true)
      end

      it 'determines if input is not integer' do
        expect(@iv.is_integer?("hello")).to eq(false)
      end

      it 'determines if empty string is not integer' do
        expect(@iv.is_integer?("")).to eq(false)
      end

      xit 'get skips yo' do
        expect(@iv.is_integer?("")).to eq(false)
      end

      it 'is a pending example and won\'t be run without the do end'

    end

    context 'when input given is not a string' do
      it 'determines if input 3 is an integer'do
        expect(@iv.is_integer?(3)).to eq(true)
      end

      it 'determines if input 3.0 is an integer'do
        pending("Not sure if 3.0 is an int or not")
        expect(@iv.is_integer?(3.0)).to eq(true)
      end

      it 'determines if input 3.0 is an integer'do
        expect(@iv.is_integer?(3.1)).to eq(true)
      end


    end


  end

  xdescribe '.is_Pending example' do

    it 'determines if empty string is not integer' do
      expect(@iv.is_integer?("")).to eq(false)
    end

  end

  describe 'Inner skip' do

    it 'determines if empty string is not integer' do
      ##lines are not run
      skip("got to back to this")
      expect(@iv.is_integer?("")).to eq(false)
    end

    it 'Is Pending and expects to fail so it will fail if it passes and  also run regardless' do
      ##lines are not run
      pending("this expects to fail but does run")
      expect(true).to eq(false)
    end

  end



end