class User < ActiveRecord::Base
  has_many :addresses
  has_many :feedback
  has_many :service
  has_one  :ranking
end
