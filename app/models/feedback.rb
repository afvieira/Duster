class Feedback < ActiveRecord::Base
  belongs_to :service
  belongs_to :service_provider
end
