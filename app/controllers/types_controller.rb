class TypesController < ApplicationController
  def index
    @types = Type.all
  end

  def show
    @type = Type.find(params[:id])
  end

  def new
    @type = Type.new
  end

  def create
    @type = Type.new
    @type.name = params[:name]

    if @type.save
      redirect_to "/types", :notice => "Type created successfully."
    else
      render 'new'
    end
  end

  def edit
    @type = Type.find(params[:id])
  end

  def update
    @type = Type.find(params[:id])

    @type.name = params[:name]

    if @type.save
      redirect_to "/types", :notice => "Type updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @type = Type.find(params[:id])

    @type.destroy

    redirect_to "/types", :notice => "Type deleted."
  end
end
