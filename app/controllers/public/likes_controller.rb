class Public::LikesController < ApplicationController
  #def create
    #@like = current_user.likes.create(post_id: params[:post_id])
    #redirect_back(fallback_location: root_path)
  #end

  #def destroy
    #@like = Like.find_by(post_id: params[:post_id], user_id: current_user.id)
    #@like.destroy
    #redirect_back(fallback_location: root_path)
  #end
   def create
    post = Post.find(params[:post_id])
    @like = current_user.likes.new(post_id: post.id)
    @like.save
    render 'replace_btn'
   end

  def destroy
    post = Post.find(params[:post_id])
    @like = current_user.likes.find_by(post_id: post.id)
    @like.destroy
    render 'replace_btn'
  end
end
