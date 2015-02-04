class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @users = User.all
    respond_with(@users)
  end

  def show
    respond_with(@user)
  end

  def new
    @user = User.new
    respond_with(@user)
  end

  def edit
  end

  def create
    @user = User.new(user_params)
    @user.save
    respond_with(@user)
  end

  def update
    @user.update(user_params)
    respond_with(@user)
  end

  def destroy
    @user.destroy
    respond_with(@user)
  end

  def home
    @sidebar = true
    @navbar = true
    @user = User.find(current_user.id)
  end

  def profile
    @active_profile =true
    @sidebar = true
    @navbar = true
    @user = User.find(current_user.id)
    @services = Service.where(user_id: current_user.id)
  end

  
  def publicprofile

    @sidebar = false
    @navbar = false
    @euser = User.where(id: params[:eid]).take
    esprovider = ServiceProvider.where(user_id: params[:eid]).take
    @results = Ranking.joins(:service).where("services.service_provider_id = ?", esprovider.id).order(created_at: :desc)
    @value = @results.average("value").to_i
  end


  private
    def set_user
      @user = User.find(params[:id])
    end

    def user_params
      params[:user]
    end
end
