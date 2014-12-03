class ServiceProvider < ActiveRecord::Base
  belongs_to :users
  has_many :service_type_service_providers
  has_many :addicional_informations
  has_many :service_provider_premia
end
