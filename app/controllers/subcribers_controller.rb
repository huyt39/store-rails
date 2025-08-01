class SubcribersController < ApplicationController
    allow_unauthenticated_access
    before_action :set_product

    def create
        @product.subcribers.where(subcriber_params).first_or_create
        redirect_to @product, notice: "You are now subscribed!"
    end

    private

    def set_product
        @product = Product.find(params[:product_id])
    end

    def subcriber_params
        params.expect(:subcriber: [:email])
    end
end