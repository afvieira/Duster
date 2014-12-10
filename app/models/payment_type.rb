class PaymentType < ActiveRecord::Base
  has_many :premium
end
