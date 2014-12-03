class Feedback < ActiveRecord::Base
  belongs_to :services
  belongs_to :users
end
