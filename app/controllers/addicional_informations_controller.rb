class AddicionalInformationsController < ApplicationController
  before_action :set_addicional_information, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @addicional_informations = AddicionalInformation.all
    respond_with(@addicional_informations)
  end

  def show
    respond_with(@addicional_information)
  end

  def new
    @addicional_information = AddicionalInformation.new
    respond_with(@addicional_information)
  end

  def edit
  end

  def create
    @addicional_information = AddicionalInformation.new(addicional_information_params)
    @addicional_information.save
    respond_with(@addicional_information)
  end

  def update
    @addicional_information.update(addicional_information_params)
    respond_with(@addicional_information)
  end

  def destroy
    @addicional_information.destroy
    respond_with(@addicional_information)
  end

  private
    def set_addicional_information
      @addicional_information = AddicionalInformation.find(params[:id])
    end

    def addicional_information_params
      params[:addicional_information]
    end
end
