class Public::PostsController < ApplicationController
  def edit
    @post = Post.find(params[:id])
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
    @tags = Tag.all
  end

  def index
    @posts = Post.all
    @tags = Tag.all
  end

  def create
   @post = Post.new(post_params)
   @tags = Tag.all
    if @post.save
      redirect_to post_path(@post)
    else
      render :new
    end
  end

  def update
   @post = Post.find(params[:id])
   @tags = Tag.all
   if @post.update(post_params)
    redirect_to post_path(@post)
   else
    render :edit
   end
  end

  private
  def post_params
    params.require(:post).permit(:title, :body, :post_tag_id, :profile_image , :count, :user_id)
  end
end
