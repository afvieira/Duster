class UtilizadorsController < ApplicationController
  before_action :set_utilizador, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @utilizadors = Utilizador.all
    respond_with(@utilizadors)
  end

  def show
    respond_with(@utilizador)
  end

  def new
    @utilizador = Utilizador.new
    respond_with(@utilizador)
  end

  def edit
  end

  def create
    @utilizador = Utilizador.new(utilizador_params)
    @utilizador.save
    respond_with(@utilizador)
  end

  def update
    @utilizador.update(utilizador_params)
    respond_with(@utilizador)
  end

  def destroy
    @utilizador.destroy
    respond_with(@utilizador)
  end

  private
    def set_utilizador
      @utilizador = Utilizador.find(params[:id])
    end

    def utilizador_params
      params[:utilizador]
    end
end
