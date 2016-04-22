class PostsController < ApplicationController
	before_filter :authenticate_user!
  	def index
    	@posts = Post.order('created_at')
 	end

    def show
    	@post = Post.find(params[:id])
  	end

	def new
		@post = Post.new
	end

	def create
		@post = Post.new(post_params)
		@post.likes = 0
		@post.user = current_user
		if @post.save
			flash[:success] = "The photo was added!"
			redirect_to root_path
		else
			render 'new'
		end
	end

	def like
		@post = Post.find(params[:id])
		@post.update_column(:likes, @post.likes + 1)
		@post.save
		redirect_to user_path(id: @post.user_id)
	end

	def destroy
		@post = Post.find(params[:id])
		@post.destroy
		@post.save
		redirect_to user_path(id: @post.user_id)
	end

	private

	def post_params
		params.require(:post).permit(:image, :caption)
	end
end
