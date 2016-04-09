class PostsController < ApplicationController
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
		if @post.save
			flash[:success] = "The photo was added!"
			redirect_to root_path
		else
			render 'new'
		end
	end

	private

	def post_params
		params.require(:post).permit(:image, :caption)
	end
end
