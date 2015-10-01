require 'rspec'

describe 'Files n Strings n Stuff' do

  before do
    # @simple_file = File.new('./test.txt','w')
    # arr = ["This, is a simple test.", "-once again this is a simple test!!!" ]
    # arr.each {|line| @simple_file.puts(line)}


  end

  describe 'Simple Test' do
    it 'should get all words from the file' do
      words = File.read('test.txt').split
      puts words.length
      expect(words.length).to eq(12)
    end

    it 'should downcase words' do
      words = File.read('test.txt').split
      downcase = []
      words.each {|word| downcase << word.downcase}
      expect(downcase.length).to eq(12)
      expect(downcase[0]).to eq('this,')
    end

    it 'should also downcase words' do
      words = File.read('test.txt').split
      downcase = words.collect {|word| word.downcase}
      expect(downcase.length).to eq(12)
      expect(downcase[0]).to eq('this,')
    end
  end


  after do

  end


end