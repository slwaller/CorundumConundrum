class CreateMinerals < ActiveRecord::Migration
  def change
    create_table :minerals do |t|
      t.string :name
      t.integer :moh
      t.string :origin

      t.timestamps
    end
  end
end
