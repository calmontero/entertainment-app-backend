class FavoritesController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response

    # GET /favorites
    def index
        favorites = Favorite.all
        render json: favorites, except: [:created_at, :updated_at]
    end

    def show
        favorite = Favorite.find(params[:id])
        render json: favorite, except: [:created_at, :updated_at]
    end

    private
    
    def render_not_found_response
        render json: { error: "favorite not found" }, status: :not_found
    end

end
