class User < ActiveRecord::Base
  has_many :addresses
  has_many :feedback
  has_many :service
  has_one  :ranking

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  ROLES = %w[admin moderator author banned]
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  #uploader
  mount_uploader :photo, FileUploader
  mount_uploader :cc, FileUploader

end
