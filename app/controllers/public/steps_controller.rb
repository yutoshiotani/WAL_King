class Public::StepsController < ApplicationController
 

  def index
    @posts = Post.all
    @tags = Tag.all
  end

  def create
   @step = Step.new(step_params)
   @step.user_id = current_user.id
    if @step.save
      redirect_to user_path(@step.user_id)
    
    end
  end

  def update
   @step = Step.find(params[:id])
   @step.user_id = current_user.id
    if @step.save!
      redirect_to user_path(@step.user_id)
    else
      render :index
    end
  end

  private
  def step_params
    params.require(:step).permit(:date, :count, :user_id)
  end
end
