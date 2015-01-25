class ServiceProviders::JobsController < ApplicationController


	def show
		@active_jobs = true
		@sidebar = true
		@navbar = true
		srvp = ServiceProvider.where(user_id: current_user.id).first
		@pending_jobs = get_pending_jobs(srvp)
		@accepted_jobs = get_accepted_jobs(srvp)
		@comp_rec_jobs = get_completed_rejected_jobs(srvp)
	end

	def ajax_stats
		srvp = ServiceProvider.where(user_id: current_user.id).first
		services_eng = Service.where(service_provider_id: srvp.id,
																 service_type_id: 1,
																 state: 3).count

		services_limp = Service.where(service_provider_id: srvp.id,
																 service_type_id: 2,
																 state: 3).count

		services_ref = Service.where(service_provider_id: srvp.id,
																 service_type_id: 3,
																 state: 3).count
		services_comp = Service.where(service_provider_id: srvp.id,
																 service_type_id: 4,
																 state: 3).count
		render :json => {:eng => services_eng,
										 :limp => services_limp,
										 :ref => services_ref,
										 :comp => services_comp}
	end

	def accept_job
		puts params.inspect
		params.permit!
		service = Service.find(params[:id])
		service.state = 2
		service.save!

		redirect_to :back
	end

	def reject_job
		params.permit!
		service = Service.find(params[:id])
		service.state = 4
		service.save!
		redirect_to :back
	end


	private
		def get_pending_jobs(srvp)
			services = Service.where(service_provider_id: srvp.id,  state: 1).order(service_date: :asc)
			pending_jobs = []
			services.each{ |elem| pending_jobs << create_service_hash(elem)}
			return pending_jobs
		end

		def get_accepted_jobs(srvp)
			services = Service.where(service_provider_id: srvp.id,  state: 2).order(service_date: :asc)
			accepted_jobs = []
			services.each{ |elem| accepted_jobs << create_service_hash(elem)}
			return accepted_jobs
		end

		def get_completed_rejected_jobs(srvp)
			services = Service.where(service_provider_id: srvp.id,  state: [3,4]).order(service_date: :asc)
			accepted_jobs = []
			services.each{ |elem| accepted_jobs << create_comp_rej_hash(elem)}
			return accepted_jobs
		end


		def create_service_hash(service)	
			user = User.find(service.user_id)
			hash = { :id => service.id, 
							 :type => service.service_type_id, 
							 :number_of_rooms => service.number_of_rooms,
							 :district => service.district,
							 :zip_code => service.zip_code,
							 :street => service.street,
							 :door_number => service.door_number,
							 :city => service.city,
							 :date => service.service_date,
							 :service_start => service.service_start,
							 :service_end => service.service_end,
							 :additional_information => service.additional_information,
							 :user => {:name => user.name, :photo => user.photo}}
			return hash
		end

		def create_comp_rej_hash(service)	
			user = User.find(service.user_id)
			hash = { :type => service.service_type_id, 
							 :date => service.service_date,
							 :state => service.state,
							 :user => user.name}
			return hash
		end


end