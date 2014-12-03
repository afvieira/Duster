class ServiceProviderPremiaController < ApplicationController
  before_action :set_service_provider_premium, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @service_provider_premia = ServiceProviderPremium.all
    respond_with(@service_provider_premia)
  end

  def show
    respond_with(@service_provider_premium)
  end

  def new
    @service_provider_premium = ServiceProviderPremium.new
    respond_with(@service_provider_premium)
  end

  def edit
  end

  def create
    @service_provider_premium = ServiceProviderPremium.new(service_provider_premium_params)
    @service_provider_premium.save
    respond_with(@service_provider_premium)
  end

  def update
    @service_provider_premium.update(service_provider_premium_params)
    respond_with(@service_provider_premium)
  end

  def destroy
    @service_provider_premium.destroy
    respond_with(@service_provider_premium)
  end

  private
    def set_service_provider_premium
      @service_provider_premium = ServiceProviderPremium.find(params[:id])
    end

    def service_provider_premium_params
      params[:service_provider_premium]
    end
end
