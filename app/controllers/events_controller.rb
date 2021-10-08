class EventsController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response
    rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity_response

    def index
        events = Event.all
        render json: events
    end

    def create
        event = Event.create(event_params) 
        render json: event, status: :created
    end

    def show 
        event = Event.find(params[:id])
        render json: event
    end

    def update
        event = Event.find_by(id: params[:id])
        event.update(event_params)
        render json: event
    end

    def destroy
        event = Event.find(params[:id])
        event.destroy
        head :no_content
    end

    private

    def event_params
        params.permit(:event_name, :posting_date, :location, :desc)
    end

    def render_not_found_response
        render json: { error: 'event not found' }, status: :not_found
    end

    def render_unprocessable_entity_response(invalid)
        render json: { errors: invalid.record.errors }, status: :unprocessable_entity
    end
end
