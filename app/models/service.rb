class Service < ActiveRecord::Base
  has_many :utilizadores
  has_one :service
end
