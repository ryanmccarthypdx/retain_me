class FullProfile < ActiveRecord::Base
  belongs_to :user
  has_many :educations
  has_many :positions
end
