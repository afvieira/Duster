class ServicesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_service, only: [:show, :edit, :update, :destroy]
  before_action :set_users, only: [:show]
  
  layout "application"
  respond_to :html

  def indexs
    @services = Service.all
    respond_with(@services)
  end

  def show
    respond_with(@service)
    @sidebar=true
    @navbar=true

  end


  def profile

    service_id = params[:id]
    @sidebar = true
    @navbar = true
    @gmaps = true
    service = Service.find(service_id)
    @user_add = Address.where(user_id:current_user.id).first
    @serv = create_service_hash(service)
    user_feedback = Feedback.where(service_id:Service.where(user_id:service.user_id))

    @feedbacks = []
    user_feedback.each {|elem|  @feedbacks << gen_user_feedback(elem)}

  end

  #response to ajax request
  def request_perish
      params.permit!
      #puts params[:city]
      perishs = get_city_perish(params[:city])
      perish_array = []
      #mudar o district para perish se mudar a db
      perishs.each{ |perish| perish_array << perish.city}
      render :json => perish_array.to_s
  end

  def ajax_search_maid
    params.permit!

    @srvps = select_srvps(params[:city],
                          params[:perish], 
                          params[:service_type_id],
                          params[:service_date],
                          params[:service_start],
                          params[:time_pretended])

    params.delete("controller")
    params.delete("action")
    @service = Service.new(params)
    render :partial =>'service_provider_ajax'
  end

  def new
    @service = Service.new
    respond_with(@service)
  end

  def edit

  end

  def search_service_provider
    @sidebar = true
    @navbar = true
    @active_search_prof = true
    @service = Service.new
    @maid_cities = get_service_providers_cities
  end

  def request_service
    @sidebar = true
    @navbar = true
    @active_search_prof = true
    @gmaps = true
    params.permit!
    service_type = params[:service][:service_type_id].to_i
    
    case service_type
    when 1
      @house_cleaning = true
    when 2
      @engomadoria = true
    when 3
      @ref = true
    when 4
      @comps = true
    end
 
    @service = Service.new(params[:service])
    @zipcodes = Service.where(user_id: current_user.id)
  end



  def request_service_submit
    params.permit!
    service = Service.new(params[:service])
    service.save!
    redirect_to '/users/home'
  end

  def create
    @service = Service.new(service_params)
    @service.save
    respond_with(@service)
  end

  def update
    @service.update(service_params)
    respond_with(@service)
  end

  def destroy
    @service.destroy
    respond_with(@service)
  end

  def resource_name

  end

  def resource
  
  end

  def rating
    @ratingActive = true
    @sidebar = true
    @navbar = true
    @services = Service.where(user_id: current_user.id)
  end

  def feedback
    @feedbackActive = true
    @sidebar = true
    @navbar = true
    @services = Service.where(service_provider_id: current_user.id)
  end

  private

    def generateMaidInfoHash(user)
      {:id => user.id, 
       :name => user.name, 
       :photo => user.photo, 
       :description => user.description}
    end

    #Filtra cidade e perish
    def filterCityPerish(city, perish)
      if perish.blank?
        return srvp_c(city)
      end
        srvp_cp(city, perish)
    end

    def srvp_c(city)
      addres = Address.select(:user_id).where(district:city)
      srps = ServiceProvider.select(:id).where(user_id: addres) 
    end

    def srvp_cp(city, perish)
      addres = Address.select(:user_id).where(district:city, city:perish)
      srps = ServiceProvider.select(:id).where(user_id: addres)
    end



    def filterService(service, filterCityPerish)
      srps_t = ServiceTypeServiceProvider.select(:service_provider_id).where(service_type_id:
              service, service_provider_id: filterCityPerish )
    end

    def filterTime(data, timeS, duration, filter_s)

      if data.blank?
        return time_tsd(timeS,duration, filter_s)
      end
      time_dtsd(data,timeS,duration, filter_s)  
    
    end

    def filterTimeStart(elem, str_time, end_time, res)
        usr_s_time = elem.start_time.utc.strftime("%H%M") 
        usr_e_time = elem.end_time.utc.strftime("%H%M")

        if  usr_s_time <= str_time  and   end_time <= usr_e_time
          res << elem
        end

    end

    def filterDateTimeStart(date, elem, str_time, end_time, res)
        usr_s_time = elem.start_time.utc.strftime("%H%M") 
        usr_e_time = elem.end_time.utc.strftime("%H%M")
        usr_date = elem.start_time.to_date.wday
        opt_date = Date.parse(date).wday

        if  usr_s_time <= str_time  and end_time <= usr_e_time and opt_date == usr_date 
          res << elem
        end

    end    


    def time_dtsd(data, timeS, duration, filter_s) 
        time_s = Time.parse(timeS)
        str_time = time_s.utc.strftime("%H%M")
        endtime_insecs = (time_s.utc.strftime("%H").to_i + duration.to_i) * 60 * 60

        if endtime_insecs > 24*60*60
          return []
        end
        end_time = Time.at(endtime_insecs).utc.strftime("%H%M")

        srvps = TimeTable.select(:service_provider_id, :start_time, :end_time).where(
                          service_provider_id:filter_s)
        res = []

        srvps.each{ |elem| filterDateTimeStart(data,elem, str_time,end_time, res)}
        return res.uniq{ |q| q.service_provider_id}
    end


    def time_tsd(timeS, duration, filter_s)
        time_s = Time.parse(timeS)
        str_time = time_s.utc.strftime("%H%M")
        endtime_insecs = (time_s.utc.strftime("%H").to_i + duration.to_i) * 60 * 60

        if endtime_insecs > 24*60*60
          return []
        end
        end_time = Time.at(endtime_insecs).utc.strftime("%H%M")

        srvps = TimeTable.select(:service_provider_id, :start_time, :end_time).where(
                          service_provider_id:filter_s)
        res = []

        srvps.each{ |elem| filterTimeStart(elem, str_time,end_time, res)}
        return res.uniq{ |q| q.service_provider_id}
    end



    def select_final_user(elem)
      srvps = ServiceProvider.select(:user_id).where(id: elem.service_provider_id)
      srps_data = User.where(id:srvps).distinct
      return srps_data.first
    end

    def select_srvps(city,perish, service, data, timeS, duration)
      filter_cp = filterCityPerish(city, perish)
      filter_s = filterService(service, filter_cp)  
      filter_time = filterTime(data, timeS, duration, filter_s)

      res = []
      filter_time.each { |elem| res << select_final_user(elem) }
      return res
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
               :additional_information => service.additional_information,
               :frequency => service.frequency,
               :building_type => service.building_type,
               :lat => service.lat,
               :long => service.long,
               :user => {:name => user.name, :photo => user.photo}}
      return hash
    end





    #End of filtering functions

    def get_city_perish(city)
      #mudar o city para perish se mudarmos a base de dados
      Address.select(:city, :district).where(district: city,
        user_id: ServiceProvider.select(:user_id).where(user_id:
          User.select(:id))).distinct
    end
    def get_service_providers_cities
       #mudar o district para city se mudarmos a base de dados
 
      Address.select(:district).where(user_id: 
        ServiceProvider.select(:user_id).where(user_id:
          User.select(:id))).distinct
    end


    def set_service
      @service = Service.find(params[:id])
    end

    def service_params
      params[:service]
    end



    def gen_user_feedback(feedback)
      maid = User.find(feedback.service_provider_id)
      {id: feedback.id,
       name:maid.name, 
       photo:maid.photo, 
       feedback:feedback.description}
    end
end
