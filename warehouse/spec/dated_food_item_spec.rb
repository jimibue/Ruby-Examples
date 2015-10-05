require 'rspec'
require 'spec_helper'
require_relative '../food_item'
require_relative '../dated_food_item'

describe 'My behaviour' do

  describe 'Basic Tests' do
    before do
      @fooditem = DatedFoodItem.new('12345678','12','about','05/01/2010')
      @fooditem1 = DatedFoodItem.new('12345678','12','about','05/01/2010')
      @fooditem1a = DatedFoodItem.new('12345678','12','about','05/02/2010')
      @fooditem2 = DatedFoodItem.new('02345678','12','about','05/02/2010')

    end

    describe 'Intialize' do
      it 'should exist' do
        expect(@fooditem).not_to be(nil)
      end
      it 'should be type FoodItem' do
        expect(@fooditem.class).to be(DatedFoodItem)
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

      it 'should equal the same item' do
        expect(@fooditem.== @fooditem1).to be true

      end

      it 'should equal the same item' do
        expect(@fooditem2.<= @fooditem1).to be true

      end

      it 'two fooditems with different dates should not be equal' do
        expect(@fooditem1.== @fooditem1a).to be false

      end

      it 'should equal the same item' do
        expect(@fooditem.to_s).to eq("UPC: 12345678 SHELF LIFE: 12 DESCRIPTION: about")

      end

      it 'should have the correct creation date' do
       # expect(@fooditem.date).to eq("x")

      end

      it 'should have the correct expire date' do
        expect(@fooditem.get_expire_integer).to eq(20100513)

      end



    end

  end


end