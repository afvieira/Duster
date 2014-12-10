class ServiceTypesController < ApplicationController
  before_action :set_service_type, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @service_types = ServiceType.all
    respond_with(@service_types)
  end

  def show
    respond_with(@service_type)
  end

  def new
    @service_type = ServiceType.new
    respond_with(@service_type)
  end

  def edit
  end

  def create
    @service_type = ServiceType.new(service_type_params)
    @service_type.save
    respond_with(@service_type)
  end

  def update
    @service_type.update(service_type_params)
    respond_with(@service_type)
  end

  def destroy
    @service_type.destroy
    respond_with(@service_type)
  end

  private
    def set_service_type
      @service_type = ServiceType.find(params[:id])
    end

    def service_type_params
      params[:service_type]
    end
end
