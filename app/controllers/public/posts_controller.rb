class Public::PostsController < ApplicationController
    before_action :authenticate_user!, only: [:edit, :create]
  def edit
    @post = Post.find(params[:id])
    @tags = Tag.all
    
  end

  def show
    @post = Post.find(params[:id])
    @like = Like.new
    @comments = @post.comments
    @comment = Comment.new
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
   @post.user_id = current_user.id
   @tags = Tag.all
    if @post.save!
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
    params.require(:post).permit(:title, :body, :count, :user_id, :image , tag_ids: [])
  end
end
