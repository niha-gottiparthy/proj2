class CommentsController < ApplicationController
	def create
	  @post = Post.find(params[:post_id])
	 # @comment = @post.comments.new(params[:comment])
	  @comment = @post.comments.create!(params.require(:comment).permit(:commenter,:body))
	 # @comment.commenter = "Niha"
	 # @comment.user_id = current_user.id
	  @comment.save
	  redirect_to(:back)
	end

end
