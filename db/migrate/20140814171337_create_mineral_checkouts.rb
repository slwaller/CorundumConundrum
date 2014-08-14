class CreateMineralCheckouts < ActiveRecord::Migration
  def change
    create_table :mineral_checkouts do |t|
      t.integer :mineral_id
      t.integer :scientist_id
      t.timestamps
    end
  end
end
