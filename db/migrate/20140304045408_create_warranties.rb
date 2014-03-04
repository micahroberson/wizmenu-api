class CreateWarranties < ActiveRecord::Migration
  def change
    create_table :warranties do |t|
      t.boolean :parts
      t.boolean :labor
      t.string :dealer
      t.date :purchase_date
      t.string :extended
      t.string :authorization
      t.string :policy
      t.double :labor
      t.double :rush
      t.double :deposit_one
      t.string :deposit_one_type
      t.date :deposit_one_date

      t.timestamps
    end
  end
end
