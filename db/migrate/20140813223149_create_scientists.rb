class CreateScientists < ActiveRecord::Migration
  def change
    create_table :scientists do |t|

      t.timestamps
    end
  end
end
