class EventsController < ApplicationController
  def index
    @events = Event.all
  end

  def show
    @event = Event.find(params[:id])
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.new
    @event.name = params[:name]
    @event.address = params[:address]
    @event.date = params[:date]
    @event.tickets_for_sale = params[:tickets_for_sale]
    @event.average_price = params[:average_price]
    @event.tickets_wanted = params[:tickets_wanted]
    @event.type_id = params[:type_id]

    if @event.save
      redirect_to "/events", :notice => "Event created successfully."
    else
      render 'new'
    end
  end

  def edit
    @event = Event.find(params[:id])
  end

  def update
    @event = Event.find(params[:id])

    @event.name = params[:name]
    @event.address = params[:address]
    @event.date = params[:date]
    @event.tickets_for_sale = params[:tickets_for_sale]
    @event.average_price = params[:average_price]
    @event.tickets_wanted = params[:tickets_wanted]
    @event.type_id = params[:type_id]

    if @event.save
      redirect_to "/events", :notice => "Event updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @event = Event.find(params[:id])

    @event.destroy

    redirect_to "/events", :notice => "Event deleted."
  end
end
