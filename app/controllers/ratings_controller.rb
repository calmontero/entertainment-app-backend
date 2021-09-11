class RatingsController < ApplicationController
    # GET /ratings
    def index
        ratings = Rating.all
        render json: ratings, except: [:created_at, :updated_at]
    end
end
