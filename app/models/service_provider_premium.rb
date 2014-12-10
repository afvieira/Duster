class ServiceProviderPremium < ActiveRecord::Base
  belongs_to :service_provider
  belongs_to :premium
end
