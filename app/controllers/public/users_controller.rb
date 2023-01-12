class Public::UsersController < ApplicationController
  def edit
    @user = User.find(params[:id])
  end

  def index
  end

  def show
    @user = User.find(params[:id])
  end
  
  def update
    
  end
  
  
  private 
  
  def user_params
    params.require(:user).permit(:name, :gender, :job_id)
  end
end
