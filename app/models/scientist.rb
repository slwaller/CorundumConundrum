class Scientist < ActiveRecord::Base
  has_many :mineral_checkouts
  has_many :minerals, through: :mineral_checkouts
end
