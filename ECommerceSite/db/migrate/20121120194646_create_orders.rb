class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :orderid
      t.integer :quantity
      t.decimal :gst
      t.decimal :pst
      t.decimal :hst
      t.integer :customerid

      t.timestamps
    end
  end
end
