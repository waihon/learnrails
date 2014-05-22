class VisitorsController < ApplicationController

	def new
		@owner = Owner.new
		#render 'visitors/new'	# Make the hidden code explicit
		#flash.now[:notice] = 'Welcome!'
		#flash.now[:alert] = 'My birthday is soon.'
	end

end
