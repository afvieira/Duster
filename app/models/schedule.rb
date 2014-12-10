class Schedule < ActiveRecord::Base
  belongs_to :service_provider
  belongs_to :slot
  belongs_to :day
end
