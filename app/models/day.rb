class Day < ActiveRecord::Base
  has_many :schedules

  def day_name(number)
  	days = { 0 => 'Sunday',
  				 	 1 => 'Monday',
  				 	 2 => 'Tuesday',
  				 	 3 => 'Wednesday',
  				 	 4 => 'Thursday',
  				 	 5 => 'Friday',
  				 	 6 => 'Saturday'
  				 }
  	return days[number]
  end

  def exists?
  	days = Day.where(description: self.description)
  	return !days.empty?
  end

  
end
