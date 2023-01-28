class Admin::UsersController < ApplicationController
  before_action :authenticate_admin!
  def show
    @user = User.find(params[:id])
    @step = Step.new
    @steps = @user.steps
    @targets = @user.targets
  end
  

  def index
    @q = User.ransack(params[:q])
    @users = @q.result(distinct: true).page(params[:page]).per(10)
  end
  
  def destroy
   user = User.find(params[:id])
    if user_id == current_user.id
       user.destroy 
    end
  end
end
