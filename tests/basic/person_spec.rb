require 'rspec'
require_relative 'person'

describe 'Testing person class' do
  before do

  end
  context 'Test initializer' do

    context 'Test first_name' do

    end

    context 'Test last_name' do

    end

  end


  it 'should get initialized name' do

     p = Person.new("James","yeates")

     puts p.first_name


  end
end