class ReviewsController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response
    rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity_response

    # GET /reviews
    def index
        reviews = Review.all
        render json: reviews, except: [:created_at, :updated_at]
    end

    def create
        program = Review.create!(reviews_params)
        render json: program, status: :created
    end

    
    private

    def reviews_params
        params.permit(:username, :comment, :rating, :program_id)
    end

    def render_not_found_response
        render json: { error: "review not found" }, status: :not_found
    end

    def render_unprocessable_entity_response(invalid)
        render json: { errors: invalid.record.errors.full_messages }, status: :unprocessable_entity
    end
end
