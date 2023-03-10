class Admin::TagsController < ApplicationController
  before_action :authenticate_admin!
  def index
    @tags = Tag.all
    @tag = Tag.new
  end

  def show
    @tag = Tag.find(params[:id])
  end
  
  def create
   @tag = Tag.new(tag_params)
    if @tag.save
     redirect_to admin_tags_path
    else
      render :index
    end
  end
  
  private
  def tag_params
    params.require(:tag).permit(:name)
  end
end