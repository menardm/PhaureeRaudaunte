class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.integer :customerid
      t.string :firstname
      t.string :lastname
      t.string :email
      t.integer :provinceid
      t.integer :addressid

      t.timestamps
    end
  end
end
