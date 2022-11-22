require 'rails_helper'

RSpec.describe Product, type: :model do
  describe 'Validations' do

    it 'is valid with all attributes' do
      @category = Category.new
      params = {
        name: 'dev',
        description: 'description',
        quantity: 5,
        category: @category,
        price_cents: 1000
    }
    expect(Product.new(params)).to be_valid
    end

    it 'is not valid without name ' do
      @category = Category.new
      params = {
        description: 'description',
        quantity: 5,
        category: @category,
        price_cents: 1000
      }
      expect(Product.new(params)).to_not be_valid
    end

      it 'is not valid without price ' do
        @category = Category.new
        params = {
          name: 'dev',
          description: 'description',
          quantity: 5,
          category: @category
        }
        expect(Product.new(params)).to_not be_valid
      end

      it 'is not valid without category ' do
        @category = Category.new
        params = {
          name: 'dev',
          description: 'description',
          quantity: 5,
          price_cents: 1000
        }
        expect(Product.new(params)).to_not be_valid
      end


      it 'is not valid without quantity ' do
        @category = Category.new
        params = {
          name: 'dev',
          description: 'description',
          category: @category,
          price_cents: 1000
        }
        expect(Product.new(params)).to_not be_valid
      end

  end
end
