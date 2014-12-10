class ServiceTypeServiceProvidersController < ApplicationController
  before_action :set_service_type_service_provider, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @service_type_service_providers = ServiceTypeServiceProvider.all
    respond_with(@service_type_service_providers)
  end

  def show
    respond_with(@service_type_service_provider)
  end

  def new
    @service_type_service_provider = ServiceTypeServiceProvider.new
    respond_with(@service_type_service_provider)
  end

  def edit
  end

  def create
    @service_type_service_provider = ServiceTypeServiceProvider.new(service_type_service_provider_params)
    @service_type_service_provider.save
    respond_with(@service_type_service_provider)
  end

  def update
    @service_type_service_provider.update(service_type_service_provider_params)
    respond_with(@service_type_service_provider)
  end

  def destroy
    @service_type_service_provider.destroy
    respond_with(@service_type_service_provider)
  end

  private
    def set_service_type_service_provider
      @service_type_service_provider = ServiceTypeServiceProvider.find(params[:id])
    end

    def service_type_service_provider_params
      params[:service_type_service_provider]
    end
end
