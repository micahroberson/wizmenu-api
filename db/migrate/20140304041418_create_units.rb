class CreateUnits < ActiveRecord::Migration
  def change
    create_table :units do |t|
      t.string :make
      t.string :model
      t.string :serial
      t.text :problem
      t.string :unit_type
      t.string :condition
      t.string :accessories
      t.string :location

      t.timestamps
    end
  end
end
