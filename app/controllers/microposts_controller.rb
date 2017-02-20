class MicropostsController < ApplicationController
	before_action :logged_in_user, only: [:create, :destroy]

	def create
		@micropost = current_user.microposts.build(micropost_params)
  	if @micropost.save
      flash[:success] = "You have made a post"
      redirect_to root_url
  	else
  		@feed_items = []
  		render 'static_pages/home'
  	end
	end

	def destroy
		'''Micropost.find(params[:id]).destroy
    flash[:success] = "Micropost deleted"
    redirect_to root_url'''
	end

	private

		def micropost_params
			params.require(:micropost).permit(:content)
  	end

end
