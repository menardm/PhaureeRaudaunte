class Product < ActiveRecord::Base
  validates_presence_of :productid,  :name, :quantity, :price
  validates_uniqueness_of :productid, :rentalid, :name
end
