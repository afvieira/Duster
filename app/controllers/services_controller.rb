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

  def new
    @service = Service.new
    respond_with(@service)
  end

  def edit
  end

  def request_service
    @service = Service.new
    @zipcodes = Service.where(user_id:'1')
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
    def set_service
      @service = Service.find(params[:id])
    end

    def service_params
      params[:service]
    end
end
