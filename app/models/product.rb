class Product < ApplicationRecord
    has_one_attached :image
    has_and_belongs_to_many :categories,optional: true
    serialize :company, Array
    attr_accessor :category_name
    around_save :product_data

   def product_data 
        @category = Category.find_or_create_by(:category_name=>category_name)
       
        yield
        @product = Product.last
        puts"========================="
        puts @product
        @category.products<<Product.find(@product.id)
    end
end
