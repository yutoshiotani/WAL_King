class Public::UsersController < ApplicationController

  before_action :ensure_correct_user, only: [:edit, :update]
  #before_action :ensure_current_user, {only: [:edit, :update]}
   #def ensure_current_user
     #if @current_user.id != params[:id].to_i
        #flash[:notice]="権限がありません"
      #redirect_to users_path
     #end
   #end

  def edit
    @user = User.find(params[:id])
    @jobs = Job.all
  end

  def index
    @q = User.ransack(params[:q])
    @users = @q.result(distinct: true).page(params[:page]).per(10)
  end

  def show
    @user = User.find(params[:id])
    @step = Step.new
    @steps = @user.steps
    @targets = @user.targets
  end

  def update
   @user = User.find(params[:id])
   @jobs = Job.all
   if @user.update(user_params)
    redirect_to user_path(@user)
   else
    render :edit
   end
  end


  private

  def user_params
    params.require(:user).permit(:id ,:name, :body, :gender, :job_id, :profile_image, :age ,:height, :weight, :problem)
  end
  def ensure_correct_user
    @user = User.find(params[:id])
    unless @user == current_user
      redirect_to user_path(current_user)
    end
  end
end
