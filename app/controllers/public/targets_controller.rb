class Public::TargetsController < ApplicationController
  before_action :authenticate_user!
  before_action :ensure_correct_user, only: [:edit, :show, :index, :update, :destroy]
  def edit
    @target = Target.find(params[:id])
  end

  def index
  end

  def new
    @target = Target.new
  end

  def show
    @target = Target.find(params[:id])
  end
  
  def create
   @target = Target.new(target_params)
   @target.user_id = current_user.id
   @tags = Tag.all
    if @target.save!
      redirect_to user_path(@target.user)
    else
      render :new
    end
  end
  
  def update
   @target = Target.find(params[:id])
   @target.user_id = current_user.id
    if @target.save!
      redirect_to user_path(@target.user)
    else
      render :edit
    end
  end
  
  def destroy
   target = Target.find(params[:id])
    if target.user_id == current_user.id
       target.destroy 
      redirect_to user_path(current_user)
    end
  end
  
  private
  def target_params
    params.require(:target).permit(:limit, :body, :weight, :user_id, :daily_step, :status)
  end

end
