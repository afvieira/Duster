class History < ActiveRecord::Base
  belongs_to :state
  belongs_to :service
  belongs_to :answer
end
