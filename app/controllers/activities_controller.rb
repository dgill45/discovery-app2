class ActivitiesController < ApplicationController
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
        render json: activity, include: :events
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
        params.permit(:activity_name, :category_id)
    end
end
