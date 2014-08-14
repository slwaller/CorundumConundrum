class CreateScientists < ActiveRecord::Migration
  def change
    create_table :scientists do |t|
      t.string :name
      t.string :institution
      t.timestamps
    end
  end
end
