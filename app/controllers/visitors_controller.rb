class VisitorsController < ApplicationController

	def new
		@owner = Owner.new
		render 'visitors/new'	# Make the hidden code explicit
	end

end
