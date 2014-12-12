class Service < ActiveRecord::Base
  belongs_to :user
  belongs_to :service_provider
  belongs_to :service_type
  has_many :history
  has_many :feedback
  has_one :ranking
  belongs_to :answer
end
