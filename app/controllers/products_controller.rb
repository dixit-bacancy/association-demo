class ProductsController < ApplicationController
    attr_accessor :category_name
    def index
        @products =Product.all
    end

    def new
        @product=Product.new
    end

    def create
        @product=Product.new(product_params)
        if @product.save
            redirect_to @product
        else
            render 'new'
        end   

    end

    def show
        @product = Product.find(params[:id])
    end

    def product_params
        params.require(:product).permit(:product_name,:price,:quantity,:category_name,company:[])
        end
end
