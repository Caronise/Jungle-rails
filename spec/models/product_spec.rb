require 'rails_helper'

RSpec.describe Product, type: :model do
  
  before :each do
    @category = Category.create(name:"Sporting Goods")
    @product = Product.new(
    name: "Armada Invictus 89 Ti",
    price: 878.39,
    quantity: 24,
    :category => @category
    )
  end

  describe 'Validations' do

    it 'should create new product if it passes all the validations' do
      @product.valid?  
      
      expect(@product).to be_valid
    end

    it 'should not create product if there is no name' do
      @product.name = nil

      @product.valid?
      
      expect(@product).to_not be_valid
      expect(@product.errors.full_messages).to include("Name can't be blank")
    end

    it 'should not create product if there is no price' do
      @product.price_cents = nil

      @product.valid?
      
      expect(@product).to_not be_valid
      expect(@product.errors.full_messages).to include("Price cents is not a number", "Price is not a number", "Price can't be blank")
    end

    it 'should not create product if there is no quantity' do
      @product.quantity = nil

      @product.valid?
      
      expect(@product).to_not be_valid
      expect(@product.errors.full_messages).to include("Quantity can't be blank")
    end

    it 'should not create product if there is no category' do
      @product.category = nil

      @product.valid?
      
      expect(@product).to_not be_valid
      expect(@product.errors.full_messages).to include("Category can't be blank")
    end

  end
end
