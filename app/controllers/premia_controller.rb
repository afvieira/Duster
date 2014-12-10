class PremiaController < ApplicationController
  before_action :set_premium, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @premia = Premium.all
    respond_with(@premia)
  end

  def show
    respond_with(@premium)
  end

  def new
    @premium = Premium.new
    respond_with(@premium)
  end

  def edit
  end

  def create
    @premium = Premium.new(premium_params)
    @premium.save
    respond_with(@premium)
  end

  def update
    @premium.update(premium_params)
    respond_with(@premium)
  end

  def destroy
    @premium.destroy
    respond_with(@premium)
  end

  private
    def set_premium
      @premium = Premium.find(params[:id])
    end

    def premium_params
      params[:premium]
    end
end
