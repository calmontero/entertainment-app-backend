class ProgramsController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response
    rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity_response
    # GET /programs
    def index
        programs = Program.all
        render json: programs, except: [:created_at, :updated_at]
    end

    def show
        program = Program.find(params[:id])
        render json: program, except: [:created_at, :updated_at]
    end

    def create
        program = Program.create!(program_params)
        render json: program, status: :created
    end

    private

    def program_params
        params.permit(:title, :year, :description, :length, :director, :cast, :image_url, :imdb_url, :category_id, :genre_id, :rating_id)
    end
    
    def render_not_found_response
        render json: { error: "program not found" }, status: :not_found
    end

    def render_unprocessable_entity_response(invalid)
        render json: { errors: invalid.record.errors.full_messages }, status: :unprocessable_entity
    end

end
