class Service < ActiveRecord::Base
  has_one :users
  has_one :service_providers
  has_one :service_types
  has_many :histories
end
