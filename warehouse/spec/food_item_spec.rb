require 'rspec'
require_relative '../food_item'

describe 'My behaviour' do

  describe 'Basic Tests' do
    before do
      @fooditem = FoodItem.new('12345678','12','about')
    end

    describe 'Intialize' do
      it 'should exist' do
        expect(@fooditem).not_to be(nil)
      end
      it 'should be type FoodItem' do
        expect(@fooditem.class).to be(FoodItem)
      end
      it 'should have a string upc instance variable' do
        expect(@fooditem.upc).to eq('12345678')
      end

      it 'should have a integer shelf_life instance variable' do
        expect(@fooditem.shelf_life).to eq 12
      end
      it 'should have a string description nstance variable' do
        expect(@fooditem.description).to eq 'about'
      end



    end

  end


end