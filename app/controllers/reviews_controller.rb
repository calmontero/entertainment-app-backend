class ReviewsController < ApplicationController
    # GET /reviews
    def index
        reviews = Review.all
        render json: reviews, except: [:created_at, :updated_at]
    end
end
