class WelcomeController < ApplicationController
	def index
		@customers = Customer.all.collect {|n| n.name.capitalize}
		@departments = Department.all.collect(&:title)
	end

	def create_query
		respond_to do |format|
			format.html {render :html => params.inspect}
		end
	end

end
