class Public::UsersController < ApplicationController
  def edit
    @user = User.find(params[:id])
    @jobs = Job.all
  end

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    @step = Step.new
  end

  def update
   @user = User.find(params[:id])
   @jobs = Job.all
   if @user.update(user_params)
    redirect_to public_user_path(@user)
   else
    render :edit
   end
  end


  private

  def user_params
    params.require(:user).permit(:name, :body, :gender, :job_id, :profile_image, :age ,:height, :weight, :problem)
  end
end
