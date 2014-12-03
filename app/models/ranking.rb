class Ranking < ActiveRecord::Base
  has_one :services
  has_one :users
end
