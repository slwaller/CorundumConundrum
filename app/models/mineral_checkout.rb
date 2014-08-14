class MineralCheckout < ActiveRecord::Base
  belongs_to :smithsonian
  belongs_to :scientist
end
