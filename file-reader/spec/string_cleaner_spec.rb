require 'rspec'
require_relative '../string_cleaner'

describe 'string_cleaner' do

  before do
    @sc = StringCleaner.new
  end

  describe "Concept testing" do
    context 'Testing regex in ruby'do
      it 'should return true when string has punctuation at index' do
        expect(@sc.is_first_punctuated('-Hello')).to be true
      end

      it 'should return true when string has punctuation at index' do
        expect(@sc.is_last_punctuated('Hello.')).to be true
      end
    end

  end

  describe 'remove_punctuation' do
    context 'basic test of remove_punctuation' do
      it 'should not change a string with no punctuation' do
        expect(@sc.remove_punctuation("Hello")).to eq"Hello"
      end

      it 'should take an empty string and return an empty string' do
        expect(@sc.remove_punctuation("")).to eq""
      end

      it 'should just remove ending period' do
        expect(@sc.remove_punctuation("Hello.")).to eq"Hello"
      end

      it 'should just remove beginning punctuation' do
        expect(@sc.remove_punctuation("Hello.")).to eq"Hello"
      end

    end

    context 'intermediate test of remove_punctuation' do

      it 'should just remove ending period an beginning $ sign' do
        expect(@sc.remove_punctuation("$Hello.")).to eq"Hello"
      end

      it 'should just remove ending period an beginning $ sign' do
        expect(@sc.remove_punctuation("$#$%@><?*&)*^_~!@#\$\'\"Hello.")).to eq"Hello"
      end

      it 'should take a string of punctuation an return an empty string' do
        expect(@sc.remove_punctuation("$#$%@><?*&)*^_~!@#\$\'")).to eq""
      end

      xit 'should take a string of punctuation an return an empty string' do
        expect(@sc.remove_punctuation("#$hello@$")).to eq"hello"
      end

    end
  end


end