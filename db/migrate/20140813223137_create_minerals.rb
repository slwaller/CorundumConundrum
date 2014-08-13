class CreateMinerals < ActiveRecord::Migration
  def change
    create_table :minerals do |t|

      t.timestamps
    end
  end
end
