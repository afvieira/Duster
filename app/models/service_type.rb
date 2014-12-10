class ServiceType < ActiveRecord::Base
  has_many :service_type_service_provider
  has_many :service
end
