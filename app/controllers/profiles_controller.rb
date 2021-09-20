class ProfilesController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response
    rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity_response
    # GET /profiles
    def index
        if params[:user_id]
            user = find_user
            profiles = user.profile
        else
            profiles = Profile.all
        end
        render json: profiles, include: :user
    end

    def show
        profile = Profile.find(params[:id])
        render json: profile, except: [:created_at, :updated_at]
    end

    def create
        user = find_user
        profile = user.profile.create!(profile_params)
        render json: profile, status: :created
    end

    def destroy
        user = find_user
        profile = user.profile.destroy(Profile.find(params[:id]))
        head :no_content
    end

    private
    
    def profile_params
        params.permit(:name, :avatar, :user_id)
    end
    
    def find_user
        User.find(params[:user_id])
    end

    def render_not_found_response
        render json: { error: "profile not found" }, status: :not_found
    end

    def render_unprocessable_entity_response(invalid)
        render json: { errors: invalid.record.errors.full_messages }, status: :unprocessable_entity
    end
end
