class LifeEventsController < ApplicationController
  before_action :set_life_event, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  respond_to :html, :json

  def index
    @life_events = current_user.life_events
    respond_with(@life_events)
  end

  def show
    respond_with(@life_event)
  end

  def new
    @life_event = LifeEvent.new
    respond_with(@life_event)
  end

  def edit
  end

  def create
    @life_event = LifeEvent.new(life_event_params)
    @life_event.user = current_user

    @life_event.save
    respond_with(@life_event)
  end

  def update
    @life_event.update(life_event_params)
    respond_with(@life_event)
  end

  def destroy
    @life_event.destroy
    respond_with(@life_event)
  end

  private
    def set_life_event
      @life_event = LifeEvent.find(params[:id])
    end

    def life_event_params
      params.require(:life_event).permit(:day, :happiness, :description)
    end
end
