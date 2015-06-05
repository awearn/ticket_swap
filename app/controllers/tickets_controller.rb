class TicketsController < ApplicationController
  def index
    @tickets = Ticket.all
  end

  def show
    @ticket = Ticket.find(params[:id])
  end

  def new
    @ticket = Ticket.new
  end

  def create
    @ticket = Ticket.new
    @ticket.notes = params[:notes]
    @ticket.price = params[:price]
    @ticket.for_sale_wanted = params[:for_sale_wanted]
    @ticket.event_id = params[:event_id]

    if @ticket.save
      redirect_to "/tickets", :notice => "Ticket created successfully."
    else
      render 'new'
    end
  end

  def edit
    @ticket = Ticket.find(params[:id])
  end

  def update
    @ticket = Ticket.find(params[:id])

    @ticket.notes = params[:notes]
    @ticket.price = params[:price]
    @ticket.for_sale_wanted = params[:for_sale_wanted]
    @ticket.event_id = params[:event_id]

    if @ticket.save
      redirect_to "/tickets", :notice => "Ticket updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @ticket = Ticket.find(params[:id])

    @ticket.destroy

    redirect_to "/tickets", :notice => "Ticket deleted."
  end
end
