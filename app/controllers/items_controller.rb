class ItemsController < ApplicationController

    # rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response

    def index
        items = Item.all
        if items
        render json: items, include: :user
        else
            render json: {error: "Item not found"}, status: :not_found
        end
    end

    # private
    # def render_not_found_response
    #     render json: {error: "Item not found"}, status: :not_found
    # end
end
