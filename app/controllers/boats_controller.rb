class BoatsController < ApplicationController
  def index
    @boats = Boat.all
    @jobs = Job.all
  end


  def new
    @boat = Boat.new
  end


  def create
    @boat = Boat.new(
      name: params[:boat][:name],
      containers: params[:boat][:containers],
      location: params[:boat][:location]
    )

    if @boat.save
      redirect_to boat_path
    else
      render new_boat_path
    end
  end


  def show
  end


  def edit
  end


  def update
  end


  def destroy
  end
end
