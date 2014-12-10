class ServiceProvider < ActiveRecord::Base
  belongs_to :user
  has_many :service_type_service_provider
  has_many :additional_information
  has_many :service_provider_premium
  has_many :service
  has_many :schedule
end
