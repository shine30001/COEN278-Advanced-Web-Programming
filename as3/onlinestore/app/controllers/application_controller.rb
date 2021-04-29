class ApplicationController < ActionController::Base
	# call back: set_cart
	include CurrentCart
	before_action :set_cart, :authorize
	# Prevent CSRF attacks by raising an exception.
	# For APIs, you may want to use :null_session instead.
	protect_from_forgery with: :exception
	
	def authorize
		unless User.find_by(id: session[:user_id])
			redirect_to login_url, notice: "Please log in"
		end
	end
end
