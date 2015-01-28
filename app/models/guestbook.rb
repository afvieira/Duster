class Guestbook < ActiveRecord::Base
  validates :name, presence: true

end
