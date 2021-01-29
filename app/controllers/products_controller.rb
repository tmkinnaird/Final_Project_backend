class ProductsController < ApplicationController

    def index
        @products = Product.all.order(:id)

        render json: @products
    end

    def show
        product = Product.find(params[:id])
        render(json: { product: product })
    end

    def destroy
        product = Product.find(params[:id])
        if product.destroy
            render(status: 204)
        else 
            render(status: 422, json: { product:product, errors: product.errors })
        end
    end

    private 

    def tweet_params
        params.require(:product).permit(:name, :description, :price)
    end
end