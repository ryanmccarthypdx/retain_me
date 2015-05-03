class User < ActiveRecord::Base
  has_many :news
  has_one :basic_profile
  has_one :full_profile
  has_one :linkedin_oauth_setting
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
