class AddSmithsonianIdToMinerals < ActiveRecord::Migration
  def change
    :minerals, :smithsonian_id, :integer
  end
end
