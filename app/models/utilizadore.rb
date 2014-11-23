class Utilizadore < ActiveRecord::Base
  has_one :user_type
  has_many :services

end
