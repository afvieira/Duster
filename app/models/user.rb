class User < ActiveRecord::Base
  include ActiveModel::Validations

  has_many :addresses
  has_many :feedback
  has_many :service
  has_one :service_provider
  has_one  :ranking
  has_many :time_table

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  ROLES = %w[admin moderator author banned]
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  #uploader
  mount_uploader :photo, FileUploader
  mount_uploader :cc, FileUploader

  validates_confirmation_of :password
  
  def is_client
      sp = ServiceProvider.find_by_id(self.id)
      if sp == nil
        return false
      else
        return true
      end
  end


end
