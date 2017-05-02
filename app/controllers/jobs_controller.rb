class JobsController < ApplicationController
  def index
    @jobs = Job.all
    @boats = Boat.all
  end


  def new
    @job = Job.new
  end


  def create
    @job = Job.new(
      name: params[:job][:name],
      containers: params[:job][:containers],
      location: params[:job][:location]
    )

    @job.save

    if @job.save
      redirect_to job_path
    else
      render new_job_path
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
