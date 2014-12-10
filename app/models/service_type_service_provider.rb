class ServiceTypeServiceProvider < ActiveRecord::Base
  belongs_to :service_provider
  belongs_to :service_type
end
