class Public::PostsController < ApplicationController
  def edit
  end

  def show
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
   #if params[:post][:post_tag].present?
    #tag_list = params[:post][:post_tag].spilit(nil)
    #@post.save_post_tag(tag_list)
   #end
   #if @post.save
      #redirect_to post_path(@post)#, notice: '作成しました'
   #else
      #flash.now[:error] = '作成に失敗しました'
      #render :new
   #end
  end
  
  private 
  def post_params
   params.require(:post).permit(:title, :body, :count, :image, :post_tag_id, :tag_id, :user_id)
  end 
end
