class CreateAdministrations < ActiveRecord::Migration
  def change
    create_table :administrations do |t|
      t.integer :administrationid
      t.string :username
      t.string :password

      t.timestamps
    end
  end
end
