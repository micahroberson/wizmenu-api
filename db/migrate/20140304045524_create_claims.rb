class CreateClaims < ActiveRecord::Migration
  def change
    create_table :claims do |t|
      t.integer :user_id
      t.integer :claim_number
      t.date :date
      t.integer :customer_id
      t.integer :unit_id
      t.integer :warranty_id

      t.timestamps
    end
  end
end
