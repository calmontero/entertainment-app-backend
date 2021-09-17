class ProfilesController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response
    rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity_response
    # GET /profiles
    def index
        profiles = Profile.all
        render json: profiles, except: [:created_at, :updated_at]
    end

    def show
        profile = Profile.find(params[:id])
        render json: profile, except: [:created_at, :updated_at]
    end

    def create
        profile = Profile.create!(profile_params)
        render json: profile, status: :created
    end

    # DELETE /profile/:id
    def destroy
        profile = Profile.find(params[:id])
        profile.destroy
        head :no_content
    end

    private
    
    def profile_params
        params.permit(:name, :avatar, :user_id)
    end
    
    def render_not_found_response
        render json: { error: "profile not found" }, status: :not_found
    end

    def render_unprocessable_entity_response(invalid)
        render json: { errors: invalid.record.errors.full_messages }, status: :unprocessable_entity
    end
end
