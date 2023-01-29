class Admin::JobsController < ApplicationController
  before_action :authenticate_admin!
  def index
    @jobs = Job.all
    @job = Job.new
  end

  def new
  end

  def show
    @job = Job.find(params[:id])
  end
  def create
   @job = Job.new(job_params)
    if @job.save
     redirect_to jobs_path
    else
      render :index
    end
  end
  private
  def job_params
    params.require(:job).permit(:name)
  end
end
