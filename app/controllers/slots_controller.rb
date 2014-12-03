class SlotsController < ApplicationController
  before_action :set_slot, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @slots = Slot.all
    respond_with(@slots)
  end

  def show
    respond_with(@slot)
  end

  def new
    @slot = Slot.new
    respond_with(@slot)
  end

  def edit
  end

  def create
    @slot = Slot.new(slot_params)
    @slot.save
    respond_with(@slot)
  end

  def update
    @slot.update(slot_params)
    respond_with(@slot)
  end

  def destroy
    @slot.destroy
    respond_with(@slot)
  end

  private
    def set_slot
      @slot = Slot.find(params[:id])
    end

    def slot_params
      params[:slot]
    end
end
