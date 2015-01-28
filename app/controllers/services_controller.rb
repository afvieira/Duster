class ServicesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_service, only: [:show, :edit, :update, :destroy]
  before_action :set_users, only: [:show]

  layout "application"
  respond_to :html

  def index
    @services = Service.all
    respond_with(@services)
  end

  def show
    respond_with(@service)
    @sidebar=true
    @navbar=true

  end

  #response to ajax request
  def request_perish
      params.permit!
      puts params[:city]
      perishs = get_city_perish(params[:city])
      perish_array = []
      #mudar o district para perish se mudar a db
      perishs.each{ |perish| perish_array << perish.city}
      render :json => perish_array.to_s
  end

  def ajax_search_maid
    params.permit!
    puts params
    #gpsrvp_c(params[:city], params[:service])

    #opção mais simples apenas cidade, servico e hora default
    #if(params[:perish].blank? and
     #  params[:time_pretended].blank? and
     #  params[:service_date].blank?)
     @srvps = srvps_csh(params[:city],
                        params[:service_type_id],
                        params[:service_start])
    #end
    
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
    puts @maid_cities
  end

  def request_service
    @sidebar = true
    @navbar = true
    @active_search_prof = true
    params.permit!
    @service = Service.new(params[:service])
    @zipcodes = Service.where(user_id: current_user.id)
  end


  def request_result

    @workers = User.take(10)
  end

  def request_submit

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
    @sidebar = true
    @navbar = true
    @services = Service.where(user_id=current_user.id)
  end

  private

    def generateMaidInfoHash(user)
      {:id => user.id, 
       :name => user.name, 
       :photo => user.photo, 
       :description => user.description}
    end

    def filterTime(timeTableElem, time, list)
      str_time = time.utc.strftime( "%H%M%S%N" )
      usr_time =timeTableElem.start_time.utc.strftime( "%H%M%S%N" ) 
      if str_time <= usr_time
        list << User.find(timeTableElem.service_provider_id)
      end
    end

    def srvps_csh(city, service, time)
      srvp_cs = srvp_cs(city, service)
      aux_srvps = TimeTable.select(:service_provider_id, :start_time).where(
                          service_provider_id:srvp_cs)
      srvps = []

      uTime = Time.parse(time)
      aux_srvps.each { |elem|  filterTime(elem,uTime,srvps) }
      puts srvps.uniq.count
      return srvps.uniq
    end


    def srvp_cs(city, service)
      addres = Address.select(:user_id).where(district:city)
      srps = ServiceProvider.select(:id).where(user_id: addres)
      srps_t = ServiceTypeServiceProvider.select(:service_provider_id).where(service_type_id:service,
                                                                             service_provider_id:srps ) 
    end

    def gpsrvp_scp(city, perish, service)
      addres = Address.select(:user_id).where(district:city, perish:perish)
      srps = ServiceProvider.select(:id).where(user_id: addres)
      srps_t = ServiceTypeServiceProvider.select(:service_provider_id).where(service_type_id:service,
                                                                             service_provider_id:srps ) 
    end

    def get_service_providers_cities
       #mudar o district para city se mudarmos a base de dados
 
      Address.select(:district).where(user_id: 
        ServiceProvider.select(:user_id).where(user_id:
          User.select(:id))).distinct
    end

    def get_city_perish(city)
      #mudar o city para perish se mudarmos a base de dados
      Address.select(:city, :district).where(district: city,
        user_id: ServiceProvider.select(:user_id).where(user_id:
          User.select(:id))).distinct
    end

    
    def set_service
      @service = Service.find(params[:id])
    end

    def service_params
      params[:service]
    end
end
