class Public::CommentsController < ApplicationController
   #def create
    #post = Post.find(params[:post_id])
    #@comment = Comment.new(comment_params)
    #@comment.user_id = current_user.id
    
    #if @comment.save!
      #redirect_back(fallback_location: root_path)
    #else
      #redirect_back(fallback_location: root_path)
    #end

   #end

  #private
  #def comment_params
    ##params.require(:comment).permit(:content)
  #end
  def create
    post = Post.find(params[:post_id])
    @comment = current_user.comments.new(comment_params)
    @comment.post_id = post.id
    @comment.save
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
  end

  private
  def comment_params
    params.require(:comment).permit(:content)
  end
end
