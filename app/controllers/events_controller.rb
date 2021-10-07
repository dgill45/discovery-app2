class EventsController < ApplicationController
    def index
        events = Event.all
        render json: events, include: :activities 
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
end
