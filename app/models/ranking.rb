class Ranking < ActiveRecord::Base
  belongs_to :service
  belongs_to :user
  validates :value, presence: true

end
