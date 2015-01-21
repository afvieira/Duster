class ServiceProviders::SchedulesController < ApplicationController
  before_action only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @schedules = Schedule.all
    respond_with(@schedules)
  end

  def show
    @active_schedule = true
    @sidebar = true
    @navbar = true
  end

  def new
    @schedule = Schedule.new
    respond_with(@schedule)
  end

  def edit
  end

  def ajax_schedules
    srvp = ServiceProvider.find(current_user.id)
    res = TimeTable.where(service_provider_id: srvp.id)
    jres = {}

    res.each { |elem| jres[elem.id] = { "start_time" => up_date(elem.start_time), 
                                        "end_time" => up_date(elem.end_time)}}

    render :json => jres
  end

  def ajax_block_resize
    params.permit!

    date_start = DateTime.parse(params[:start])
    date_end = DateTime.parse(params[:end])


    srvp = ServiceProvider.find(current_user.id)
    srvp.update_slot(params[:id], date_start, date_end)
    render :json => {:result => "ok"}
  end

  def ajax_new_block
    params.permit!

    date_start = DateTime.parse(params[:time_start])
    date_end = DateTime.parse(params[:time_end])

    #slot = slot_exists(date_start.to_time, date_end.to_time)
    #day = day_exists(date_start.wday)
    srvp = ServiceProvider.find(current_user.id)

    srvp.add_slot(date_start, date_end)
    #srvp.add_schedule(slot,day)
    
    render :json =>{:result  => "ok"}
  end
  def create
    @schedule = Schedule.new(schedule_params)
    @schedule.save
    respond_with(@schedule)
  end


  def update
    @schedule.update(schedule_params)
    respond_with(@schedule)
  end

  def destroy
    @schedule.destroy
    respond_with(@schedule)
  end

  private

    def up_date(odate)
        #cdate = next_wday(odate)
        #return odate.change(:day => cdate.day)
        tdate = Date.today
        cdate = tdate.monday
        #A semana comeca a segunda no rails
        #Se a data for um domingo entao pedo o domingo anterior a segunda da semana actual
        #caso contrario calcula o dia corresponde ao dia da semana da  data antiga
        if odate.wday == 0 
          cdate = cdate.yesterday
        else
          cdate = cdate.change(:day => cdate.day + odate.wday-1)
        end
        return odate.change(:day => cdate.day, 
                            :month => cdate.month, 
                            :year => cdate.year)
    end 

    #verifys if the days is already in the db
    # if it does it return the existing one otherwise return a new one.
    def day_exists(number)
      day = Day.new
      day.description = day.day_name(number)

      if day.exists?
        days = Day.where(description: day.description)
        day = Day.new(days.first.attributes)
      else
        day.save!  
      end  
      return day
    end
    #verifys if a slot with that time already exists
    # if it does it return the existing one otherwise return a new one.
    def slot_exists(date_start, date_end)

      if Slot.time_exist(date_start, date_end)

        slots = Slot.where(begining_hour: date_start, ending_hour: date_end)
        slot = Slot.new(slots.first.attributes)
      
      else
        
        slot = Slot.new(begining_hour: date_start, ending_hour: date_end)
        slot.save!
      
      end

      return slot
    end

    def set_schedule
      @schedule = Schedule.find(params[:id])
    end

    def schedule_params
      params[:schedule]
    end
end
