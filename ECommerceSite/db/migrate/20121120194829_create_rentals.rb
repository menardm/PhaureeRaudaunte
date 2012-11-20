class CreateRentals < ActiveRecord::Migration
  def change
    create_table :rentals do |t|
      t.integer :rentalid
      t.string :name
      t.decimal :price
      t.string :animaltype
      t.string :workertype
      t.boolean :availability

      t.timestamps
    end
  end
end
