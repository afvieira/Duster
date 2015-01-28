class ServicesController < ApplicationController
  before_action :set_service, only: [:show, :edit, :update, :destroy]
  before_action :set_users, only: [:show]
  before_action :set_service_provider, only: [:show]

  respond_to :html

  def index
    @services = Service.all
    respond_with(@services)
  end

  def show
    respond_with(@service)
    @sidebar=true
    @navbar=true
  end

  def new
    @service = Service.new
    respond_with(@service)
  end

  def edit
  end

  def request_service
    @service = Service.new
    @zipcodes = Service.where(user_id:current_user.id)
  end

  def request_result
    puts params

    final_params = service_params

    d = Date.strptime(final_params[:service_date], "%d/%m/%Y")
    timestart = final_params[:service_start].split(":")
    timeduration = final_params[:timePretended].split(":")
    starttimesecs = (d.to_time.to_i) + timestart[0].to_i * 60 * 60 + timestart[1].to_i * 60
    endtimesecs = starttimesecs + timeduration[0].to_i * 60 * 60+timeduration[1].to_i * 60
    starttime_a = Time.at(starttimesecs-30*60)
    starttime_b = Time.at(starttimesecs+30*60)
    endtime_a = Time.at(endtimesecs-30*60)
    endtime_b = Time.at(endtimesecs+30*60)
    s = starttime_a.strftime("%Y-%m-%d %H:%M:%S")
    e = endtime_a.strftime("%Y-%m-%d %H:%M:%S")
    puts s
    puts e
    puts starttime_a.strftime("%A")
    puts endtime_a.strftime("%A")
    @workers = User.joins(:service_provider,:time_table,:addresses).where("addresses.city = ? AND time_tables.start_time between '00:00:00' AND ? AND time_tables.end_time between ? and '24:00:00'",
      final_params[:city],starttime_b.strftime("%H:%M:%S"),endtime_a.strftime("%H:%M:%S"))
  end

  def request_submit

  end

  def create
    @service = Service.new(service_params)
    @service.save
    respond_with(@service)
  end

  def update
    @service.update(service_params)
    respond_with(@service)
  end

  def destroy
    @service.destroy
    respond_with(@service)
  end

  def resource_name

  end

  def resource
  end

  private
    def set_service
      @service = Service.find(params[:id])
    end

    def service_params
      params[:service]
    end
end
