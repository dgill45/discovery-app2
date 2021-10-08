class ProfilesController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response
    rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity_response

    def index
        profiles = Profile.all
        render json: profiles 
    end

    def create
        profile = Profile.create(profile_params) 
        render json: profile, status: :created
    end

    def show 
        profile = Profile.find(params[:id])
        render json: profile
    end

    def update
        profile = Profile.find_by(id: params[:id])
        profile.update(profile_params)
        render json: profile
    end

    def destroy
        profile = Profile.find(params[:id])
        profile.destroy
        head :no_content
    end

    private

    def profile_params
        params.permit(:username, :email, :password)
    end

    def render_not_found_response
        render json: { error: 'profile not found' }, status: :not_found
    end

    def render_unprocessable_entity_response(invalid)
        render json: { errors: invalid.record.errors }, status: :unprocessable_entity
    end
end
