module Api
  class WishlistsController < ApplicationController
    protect_from_forgery with: :null_session
    def create
      wishlist = Wishlist.create!(wishlist_params)

      respond_to do |format|
        format.json { render json: wishlist.to_json, status: :created }
      end
    end

    def destroy
      wishlist = Wishlist.find(params[:id])
      wishlist.destroy

      respond_to do |format|
        format.json { render json: nil, status: 204 }
      end
    end

    private

    def wishlist_params
      params.permit(:user_id, :property_id)
    end
  end
end
