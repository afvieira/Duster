class Answer < ActiveRecord::Base
  belongs_to :user
  has_one :history
  belongs_to :answer_type
end
