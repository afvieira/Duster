class Premium < ActiveRecord::Base
  belongs_to :payment_type
  has_many :service_provider_premium
end
