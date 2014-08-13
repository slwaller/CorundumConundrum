class Scientist < ActiveRecord::Base
  belongs_to :researchable, polymorphic: true
end
