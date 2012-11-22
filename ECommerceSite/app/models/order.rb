class Order < ActiveRecord::Base
  #parent
  belongs_to :customer
  
  #children
  has_many :products
end
