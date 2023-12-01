# app/controllers/events_controller.rb

class EventsController < ApplicationController
    before_action :authenticate_user!, except: [:index, :show]
  
    # Action to list all events
    def index
      @events = Event.all
    end
  
    # Action to show an individual event
    def show
      @event = Event.find(params[:id])
    end
  
    # Action to render a form for creating a new event
    def new
      @event = Event.new
    end
  
    # Action to create a new event
    def create
        @event = Event.new(event_params)
        @event.user = current_user  # Associate the event with the current user
        if @event.save
          redirect_to @event
        else
          render 'new'
        end
    end
  
    # Action to render a form for editing an event
    def edit
        @event = Event.find(params[:id])
        authorize @event
      
        if request.patch?
          if @event.update(event_params)
            redirect_to @event, notice: 'Event was successfully updated.'
          else
            render 'edit'
          end
        end
    end
      
  
    # Action to delete an event
    def destroy
      @event = Event.find(params[:id])
      @event.destroy
      redirect_to events_path
    end

    def register
        @event = Event.find(params[:id])
        current_user.events << @event unless current_user.events.include?(@event)
        redirect_to @event, notice: 'You are now registered for this event.'
    end
      
    def unregister
        @event = Event.find(params[:id])
        current_user.events.delete(@event)
        redirect_to @event, notice: 'You have unregistered from this event.'
    end
  
    private
  
    # Strong parameters to permit event attributes
    def event_params
      params.require(:event).permit(:name, :date, :location, :description)
    end
  end
  