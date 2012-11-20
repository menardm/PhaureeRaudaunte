class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.integer :productid
      t.string :name
      t.integer :quantity
      t.decimal :price
      t.integer :rentalid
      t.text :description

      t.timestamps
    end
  end
end
