class Mineral < ActiveRecord::Base
  mount_uploader :avatar, AvatarUploader
  
  belongs_to :smithsonian
  
  has_many :mineral_checkouts
  has_many :scientists, through: :mineral_checkouts
end
 