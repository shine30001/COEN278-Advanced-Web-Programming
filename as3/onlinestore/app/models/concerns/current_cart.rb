module CurrentCart


	def set_cart
		@cart = Cart.find(session[:cart_id])     
		rescue      # error handling
			@cart = Cart.create()
			session[:cart_id] = @cart.id
		return @cart
	end
end