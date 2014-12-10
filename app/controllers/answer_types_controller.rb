class AnswerTypesController < ApplicationController
  before_action :set_answer_type, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @answer_types = AnswerType.all
    respond_with(@answer_types)
  end

  def show
    respond_with(@answer_type)
  end

  def new
    @answer_type = AnswerType.new
    respond_with(@answer_type)
  end

  def edit
  end

  def create
    @answer_type = AnswerType.new(answer_type_params)
    @answer_type.save
    respond_with(@answer_type)
  end

  def update
    @answer_type.update(answer_type_params)
    respond_with(@answer_type)
  end

  def destroy
    @answer_type.destroy
    respond_with(@answer_type)
  end

  private
    def set_answer_type
      @answer_type = AnswerType.find(params[:id])
    end

    def answer_type_params
      params[:answer_type]
    end
end
