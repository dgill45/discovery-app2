class ActivitiesController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response
    rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity_response

    def index
        activities = Activity.all
        render json: activities 
    end

    def create
        activity = Activity.create(activity_params) 
        render json: activity, status: :created
    end

    def show 
        activity = Activity.find(params[:id])
        render json: activity
    end

    def update
        activity = Activity.find_by(id: params[:id])
        activity.update(activity_params)
        render json: activity
    end

    def destroy
        activity = Activity.find(params[:id])
        activity.destroy
        head :no_content
    end

    private

    def activity_params
        params.permit(:id, :activity_name, :category_id)
    end

    def render_not_found_response
        render json: { error: 'activity not found' }, status: :not_found
    end

    def render_unprocessable_entity_response(invalid)
        render json: { errors: invalid.record.errors }, status: :unprocessable_entity
    end
end
