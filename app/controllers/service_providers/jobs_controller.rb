class ServiceProviders::JobsController < ApplicationController


	def show
		@active_jobs = true
		@sidebar = true
		@navbar = true

	end

end