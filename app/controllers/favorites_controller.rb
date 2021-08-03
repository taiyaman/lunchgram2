class FavoritesController < ApplicationController
    def create
        @favorite = current_user.favorites.create(lunch_id: params[:lunch_id])
        redirect_back(fallback_location: root_path)
    end
    
    def destroy
        @lunch = Lunch.find(params[:lunch_id])
        @favorite = current_user.favorites.find_by(lunch_id: @lunch.id)
        @favorite.destroy
        redirect_back(fallback_location: root_path)
    end
end
