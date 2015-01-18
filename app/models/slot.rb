class Slot < ActiveRecord::Base
  has_many :schedules
  

  def self.time_exist(t_start,t_end)
  	slots = Slot.where(begining_hour: t_start, ending_hour: t_end)

  	if slots.empty?
  		return false
  	end
  		return true
  end
end
