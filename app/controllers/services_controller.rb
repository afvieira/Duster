class ServicesController < ApplicationController
  before_action :set_service, only: [:show, :edit, :update, :destroy]
  before_action :set_users, only: [:show]

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

  def request_perish
      params.permit!
      puts params[:city]
      perishs = get_city_perish(params[:city])
      perish_array = []
      #mudar o district para perish se mudar a db
      perishs.each{ |perish| perish_array << perish.city}
      render :json => perish_array.to_s

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
    puts @maid_addresses.inspect


  end

  def request_service
    @sidebar = true
    @navbar = true
    @active_search_prof = true
    @service = Service.new
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

  private
    def get_service_providers_cities
       #mudar o district para city se mudarmos a base de dados
 
      Address.select(:district).where(user_id: 
        ServiceProvider.select(:user_id).where(user_id:
          User.select(:id))).distinct
    end

    def get_city_perish(city)
      #mudar o city para perish se mudarmos a base de dados
      Address.select(:city, :district).where(district: city).distinct
    end

    
    def set_service
      @service = Service.find(params[:id])
    end

    def service_params
      params[:service]
    end
end
