class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.integer :addressid
      t.string :streetname
      t.integer :streetnumber
      t.string :city
      t.string :province
      t.string :postalcode
      t.integer :customerid

      t.timestamps
    end
  end
end
