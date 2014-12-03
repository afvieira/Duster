class ServiceType < ActiveRecord::Base
  has_many :service_type_service_providers
end
