class RankingsController < ApplicationController
  before_action :set_ranking, only: [:show, :edit, :update, :destroy]
  
  respond_to :html

  def index
    @rankings = Ranking.all
    respond_with(@rankings)
  end

  def show
    respond_with(@ranking)
  end

  def new
    @ranking = Ranking.new
    respond_with(@ranking)
  end

  def edit
  end

  def create
    @ranking = Ranking.new(ranking_params)
    @ranking.user_id = current_user.id
    @ranking.save
    redirect_to services_rating_path
  end

  def update
    @ranking.update(ranking_params)
    respond_with(@ranking)
  end

  def destroy
    @ranking.destroy
    respond_with(@ranking)
  end

  private
    def set_ranking
      @ranking = Ranking.find(params[:id])
    end

     def ranking_params
      params.require(:ranking).permit(:user_id, :service_id, :comment, :value)
    end
end
