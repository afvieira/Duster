class AdditionalInformationsController < ApplicationController
  before_action :set_additional_information, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @additional_informations = AdditionalInformation.all
    respond_with(@additional_informations)
  end

  def show
    respond_with(@additional_information)
  end

  def new
    @additional_information = AdditionalInformation.new
    respond_with(@additional_information)
  end

  def edit
  end

  def create
    @additional_information = AdditionalInformation.new(additional_information_params)
    @additional_information.save
    respond_with(@additional_information)
  end

  def update
    @additional_information.update(additional_information_params)
    respond_with(@additional_information)
  end

  def destroy
    @additional_information.destroy
    respond_with(@additional_information)
  end

  private
    def set_additional_information
      @additional_information = AdditionalInformation.find(params[:id])
    end

    def additional_information_params
      params[:additional_information]
    end
end
