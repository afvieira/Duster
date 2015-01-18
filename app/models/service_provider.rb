class ServiceProvider < ActiveRecord::Base
  belongs_to :user
  has_many :service_type_service_provider
  has_many :additional_information
  has_many :service_provider_premium
  has_many :service
  has_many :schedule
  has_many :time_table


  def add_slot(date_start, date_end)
    slots = TimeTable.where(service_provider_id: self.id,
                            start_time: date_start,
                            end_time: date_end)

    if slots.empty?
      slots = TimeTable.new(service_provider_id: self.id,
                            start_time: date_start,
                            end_time: date_end)
      slots.save!
    end

  end
  

  def add_schedule(slot,day)


  	schedules = Schedule.where(service_provider_id: self.id, day_id: day.id)
  	#Se o cliente ainda nao tem slots naquele dia pode-se adicionar a vontade
  	if schedules.empty?
  		schedule = Schedule.new(service_provider_id: self.id, 
  														slot_id: slot.id, 
  														day_id: day.id, 
  														availability: true)
  		schedule.save!
  	else
  		#Mas se tem temos que ter cuidado e verificar se e um slot novo ou 
  		#apenas esta a mudar o horario de um
  		puts "ola"
  		puts schedules.inspect
  		#Ir buscar os slots desse dia e verificar se é um novo ou uma alteracao


  	end
  end

  
end
