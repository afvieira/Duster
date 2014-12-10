class Slot < ActiveRecord::Base
  has_many :schedules
end
