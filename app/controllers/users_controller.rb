class UsersController < ApplicationController
  skip_before_filter :verify_authenticity_token
	before_filter :authenticate_user!

	def index
		@users = User.all
	end

	def show
		@user = User.find(params[:id])
	end
end
